defmodule Arrays.Implementations.ErlangArray do
  @moduledoc """
  Wraps the Erlang `:array` module.

  See http://erlang.org/doc/man/array.html for more information about its internals.


  """

  @behaviour Arrays.Behaviour

  alias __MODULE__

  defstruct [:contents]

  @impl Arrays.Behaviour
  # {:default, val} and {:size, num} are forwarded to `:array`
  def empty(options) do
    contents = :array.new([fixed: false, default: nil] ++ options)
    %ErlangArray{contents: contents}
  end

  use FunLand.Mappable

  use FunLand.Reducible

  @impl FunLand.Reducible
  def reduce(%ErlangArray{contents: contents}, acc, fun) do
    :array.foldr(fun, acc, contents)
  end

  @behaviour Access

  @impl Access
  def fetch(%ErlangArray{contents: contents}, index) when index >= 0 do
    if index >= :array.size(contents) do
      :error
    else
      {:ok, :array.get(index, contents)}
    end
  end

  def fetch(%ErlangArray{contents: contents}, index) when index < 0 do
    size = :array.size(contents)

    if index < (-size) do
      :error
    else
      {:ok, :array.get(index + size, contents)}
    end
  end

  @impl Access
  def get_and_update(array = %ErlangArray{contents: contents}, index, function) when index >= 0 do
    if index >= :array.size(contents) do
      raise ArgumentError
    else
      value = :array.get(index, contents)

      case function.(value) do
        :pop ->
          new_contents = :array.reset(index, contents)
          {value, %ErlangArray{array | contents: new_contents}}

        {get, new_value} ->
          new_contents = :array.set(index, new_value, contents)
          {get, %ErlangArray{array | contents: new_contents}}
      end
    end
  end

  @impl Access
  def get_and_update(array = %ErlangArray{contents: contents}, index, function) when index < 0 do
    if index < (-:array.size(contents)) do
      raise ArgumentError
    else
      get_and_update(array, index + :array.size(contents), function)
    end
  end

  @impl Access
  def pop(array = %ErlangArray{contents: contents}, index) when index >= 0 do
    cond do
      (index >= :array.size(contents)) ->
        raise ArgumentError
      (index == :array.size(contents) - 1) ->
        # Fast implementation
        value = :array.get(index, contents)
        new_contents = :array.resize(index, contents)
        {value, %ErlangArray{array | contents: new_contents}}
      true ->
        # Slow implementation
        value = :array.get(index, contents)
        new_contents = fix_contents_after_pop(contents, index, :array.default(contents))
        {value, %ErlangArray{array | contents: new_contents}}
    end
  end

  def pop(array = %ErlangArray{contents: contents}, index) when index < 0 do
    if (index < (-:array.size(contents))) do
      raise ArgumentError
    else
      pop(array, index + :array.size(contents))
    end
  end

  defp fix_contents_after_pop(contents, index, default) do
    contents
    |> do_foldl([], fn key, value, acc ->
      cond do
        key > index ->
          [{key - 1, value} | acc]
        key == index ->
          acc # Leave out popped element
        key < index ->
          [{key, value} | acc]
      end
    end)
    |> Enum.reverse()
    |> IO.inspect(label: :before_orddict)
    |> :array.from_orddict(default)
  end

  defp do_foldl(arr, acc, fun) do
    :array.foldl(fun, acc, arr)
  end

  defimpl Arrays.Protocol do
    alias Arrays.Implementations.ErlangArray

    @impl true
    def size(%ErlangArray{contents: contents}) do
      :array.size(contents)
    end

    @impl true
    def map(array = %ErlangArray{contents: contents}, fun) do
      new_contents = :array.map(fn _index, val -> fun.(val) end, contents)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def reduce(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldl(fn _index, val, acc -> fun.(val, acc) end, acc, contents)
    end

    @impl true
    def reduce_right(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldr(fn _index, val, acc -> fun.(acc, val) end, acc, contents)
    end

    @impl true
    def default(%ErlangArray{contents: contents}) do
      :array.default(contents)
    end

    @impl true
    def get(%ErlangArray{contents: contents}, index) do
      if index < 0 do
        :array.get(index + :array.size(contents), contents)
      else
        :array.get(index, contents)
      end
    end

    @impl true
    defdelegate replace(array, index, element), to: __MODULE__, as: :set

    def set(array = %ErlangArray{contents: contents}, index, item) do
      new_contents =
        if index < 0 do
          :array.set(index + :array.size(contents), item, contents)
        else
          :array.set(index, item, contents)
        end

      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def reset(array = %ErlangArray{contents: contents}, index) do
      new_contents =
        if index < 0 do
          :array.reset(index + :array.size(contents), contents)
        else
          :array.reset(index, contents)
        end

      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def append(array = %ErlangArray{contents: contents}, item) do
      new_contents = :array.set(:array.size(contents), item, contents)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def resize(array = %ErlangArray{contents: contents}, new_size) do
      IO.inspect({contents, new_size}, label: :resize_erlang_array)
      new_contents = :array.resize(new_size, contents)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def extract(array = %ErlangArray{contents: contents}) do
      case :array.size(contents) do
        0 ->
          {:error, :empty}

        size ->
          index = size - 1
          elem = :array.get(index, contents)
          contents_rest = :array.resize(index, contents)
          array_rest = %ErlangArray{array | contents: contents_rest}
          {:ok, {elem, array_rest}}
      end
    end

    @impl true
    def to_list(%ErlangArray{contents: contents}) do
      :array.to_list(contents)
    end
  end
end
