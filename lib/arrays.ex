defmodule Arrays do
  @default_array_implementation Arrays.Implementations.MapArray
  @moduledoc """
  Well-structured Arrays with fast random-element-access for Elixir, offering a common interface with multiple implementations with varying performance guarantees that can be switched in your configuration.

  """

  @type array :: Arrays.Protocol.t
  @type index :: Arrays.Protocol.index

  def empty(options \\ []) do
    impl_module = Keyword.get(options, :implementation, Application.get_env(:arrays, :default_array_implementation, @default_array_implementation))

    options = Keyword.delete(options, :implementation)
    impl_module.empty(options)
  end

  def new(enumerable \\ [], options \\ []) do
    Enum.into(enumerable, empty(options))
  end

  @spec size(array) :: non_neg_integer
  defdelegate size(array), to: Arrays.Protocol

  @spec map(array, (any -> any)) :: array
  defdelegate map(array, fun), to: Arrays.Protocol

  @spec reduce(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  defdelegate reduce(array, acc, fun), to: Arrays.Protocol

  @spec reduce_left(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  defdelegate reduce_left(array, acc, fun), to: Arrays.Protocol

  @spec default(array) :: any
  defdelegate default(array), to: Arrays.Protocol

  @spec get(array, index) :: any
  defdelegate get(array, index), to: Arrays.Protocol

  @spec set(array, index, value :: any) :: array
  defdelegate set(array, index, value), to: Arrays.Protocol

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
