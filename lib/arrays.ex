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

  You can look at the source code of 'lib/arrays/implementations/common_protocol_implementations.ex' for some hints as to how those protocols can be easily implemented on top of the calls that the `Arrays.Protocol` protocol itself already provides.
  """

  @type array :: Arrays.Protocol.t()
  @type index :: Arrays.Protocol.index()
  @type value :: Arrays.Protocol.value()

  @doc """
  Creates a new, empty, array.
  Optionally accepts a list of options.

      iex> Arrays.empty()
      #Arrays.Implementations.MapArray<[]>


  # Options

  - `implementation:` Module name of array-implementation to use.
       - When not specified, will use the implementation which is configured in `:arrays, :default_array_implementation`,
       - When no configuration is specified either, #{@default_array_implementation} will be used by default.

      iex> Arrays.empty([implementation: Arrays.Implementations.MapArray])
      #Arrays.Implementations.MapArray<[]>

      iex> Arrays.empty([implementation: Arrays.Implementations.ErlangArray])
      #Arrays.Implementations.ErlangArray<[]>

  Any other option is passed on to the particular array implementation.
  Not all array implementations recognize all options.
  However, the following two options are very common (and supported by both built-in implementations, `Arrays.Implementations.ErlangArray` and `Arrays.Implementations.MapArray`):

  - `default:` Value that empty elements should start with. (Default: `nil`)
  - `size:` Size of the array at start. (Default: 0)


  iex> Arrays.empty([default: 42, size: 5, implementation: Arrays.Implementations.MapArray])
  #Arrays.Implementations.MapArray<[42, 42, 42, 42, 42]>

  iex> Arrays.empty([default: "Empty" , size: 1, implementation: Arrays.Implementations.ErlangArray])
  #Arrays.Implementations.ErlangArray<["Empty"]>

  """
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

  @doc """
  Creates a new, empty array with default options.
  """
  @spec new() :: array()
  def new(), do: new([], [])

  @doc """
  Creates a new array, receiving its elements from the given `Enumerable`, with default options.
  """
  @spec new(Enum.t()) :: array()
  def new(enumerable), do: new(enumerable, [])

  @doc """
  Creates a new array, receiving its elements from the given `Enumerable`, with the given options.
  Accepts the same options as `empty/1`.
  """
  @spec new(Enum.t(), keyword) :: array()
  def new(enumerable, options) do
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

  @doc """
  The number of elements in the array.
  """
  @spec size(array) :: non_neg_integer
  defdelegate size(array), to: Arrays.Protocol

  @doc """
  Maps a function over an array, returning a new array.

      iex> Arrays.new([1,2,3]) |> Arrays.map(fn val -> val * 2 end)
      #Arrays.Implementations.MapArray<[2, 4, 6]>
  """
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
