defmodule Arrays do
  @default_array_implementation Arrays.Implementations.MapArray
  @moduledoc """
  Well-structured Arrays with fast random-element-access for Elixir, offering a common interface with multiple implementations with varying performance guarantees that can be switched in your configuration.


  ## Implementing for new types

  To create a new implementation, two things are required:

  - Add an implementation for the `Arrays.Protocol` protocol.
  - Add `@behaviour Arrays.Behaviour` to your datatype's module, and implement a sensible definition for `empty/1`.

  Besides these, you probably want to implement:

  - From Elixir's standard library:
    - `Enumerable`
    - `Collectable`
    - the `Access` behaviour
  - From common container libraries:
    - `Insertable`
    - `Extractable`
    - `FunLand.Mappable`
    - `FunLand.Reducible`
  """

  @type array :: Arrays.Protocol.t()
  @type index :: Arrays.Protocol.index()
  @type value :: Arrays.Protocol.value()

  def empty(options \\ []) do
    impl_module =
      Keyword.get(
        options,
        :implementation,
        Application.get_env(:arrays, :default_array_implementation, @default_array_implementation)
      )

    options = Keyword.delete(options, :implementation)
    impl_module.empty(options)
  end

  @spec new(Enum.t(), keyword) :: array()
  def new(enumerable \\ [], options \\ []) do
    default = Keyword.get(options, :default, nil)
    size = Keyword.get(options, :size, nil)

    if size == nil do
      new_empty(enumerable, default)
    else
      count = Enum.count(enumerable)

      cond do
        count == size ->
          new_empty(enumerable, default)

        count > size ->
          new_empty(Enum.slice(enumerable, 0, size), default)

        count < size ->
          resize(new_empty(enumerable, default), size)
      end
    end
  end

  defp new_empty(enumerable, default) do
    Enum.into(enumerable, empty(default: default))
  end

  @spec size(array) :: non_neg_integer
  defdelegate size(array), to: Arrays.Protocol

  @spec map(array, (index, current_value :: value -> updated_value :: value)) :: array
  defdelegate map(array, fun), to: Arrays.Protocol

  @spec reduce(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  defdelegate reduce(array, acc, fun), to: Arrays.Protocol

  @spec default(array) :: any
  defdelegate default(array), to: Arrays.Protocol

  @spec get(array, index) :: any
  defdelegate get(array, index), to: Arrays.Protocol

  @spec replace(array, index, value :: any) :: array
  defdelegate replace(array, index, value), to: Arrays.Protocol

  @spec reset(array, index) :: any
  defdelegate reset(array, index), to: Arrays.Protocol

  @spec append(array, item :: any) :: array
  defdelegate append(array, item), to: Arrays.Protocol

  @spec extract(array) :: {:ok, {item :: any, array}} | {:error, :empty}
  defdelegate extract(array), to: Arrays.Protocol

  @spec resize(array, size :: non_neg_integer) :: array
  defdelegate resize(array, size), to: Arrays.Protocol

  @spec to_list(array) :: list
  defdelegate to_list(array), to: Arrays.Protocol
end
