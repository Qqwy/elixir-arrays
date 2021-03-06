defmodule Arrays.Implementations.ErlangArray do
  @moduledoc """
  Wraps the Erlang `:array` module.

  (See: http://erlang.org/doc/man/array.html)
  """

  @behaviour Arrays.Behaviour

  alias __MODULE__

  defstruct [:contents]

  @impl Arrays.Behaviour
  # {:default, val} and {:size, num} are forwarded to `:array`
  def empty(options) do
    contents = :array.new([{:fixed, false} | options] ++ [default: nil])
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
      {:ok, :array.get(contents, index)}
    end
  end

  def fetch(%ErlangArray{contents: contents}, index) when index < 0 do
    size = :array.size(contents)

    if index < -size do
      :error
    else
      {:ok, :array.get(contents, index + size)}
    end
  end

  @impl Access
  def get_and_update(array = %ErlangArray{contents: contents}, index, function) when index >= 0 do
    if index >= :array.size(contents) do
      {res, _} = function.(nil)
      {res, array}
    else
      value = :array.get(contents, index)

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
    if index < -:array.size(contents) do
      {res, _} = function.(nil)
      {res, array}
    else
      get_and_update(array, index + :array.size(contents), function)
    end
  end

  @impl Access
  def pop(array = %ErlangArray{contents: contents}, index) when index >= 0 do
    new_index = index + map_size(contents)
    value = :array.get(contents, new_index)
    new_contents = :array.reset(new_index, contents)
    {value, %ErlangArray{array | contents: new_contents}}
  end

  def pop(array = %ErlangArray{contents: contents}, index) when index < 0 do
    pop(array, index + :array.size(contents))
  end

  defimpl Arrays.Protocol do
    alias Arrays.Implementations.ErlangArray

    @impl true
    def size(%ErlangArray{contents: contents}) do
      :array.size(contents)
    end

    @impl true
    def map(array = %ErlangArray{contents: contents}, fun) do
      new_contents = :array.map(fun, contents)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def reduce(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldl(fun, acc, contents)
    end

    @impl true
    def reduce_right(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldr(fun, acc, contents)
    end

    @impl true
    def default(%ErlangArray{contents: contents}) do
      :array.default(contents)
    end

    @impl true
    def get(%ErlangArray{contents: contents}, index) do
      if index < 0 do
        :array.get(contents, index + :array.size(contents))
      else
        :array.get(contents, index)
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
      new_contents = :array.resize(contents, new_size)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def extract(array = %ErlangArray{contents: contents}) do
      case :array.size(contents) do
        0 ->
          {:error, :empty}

        size ->
          index = size - 1
          elem = :array.get(contents, index)
          contents_rest = :array.resize(contents, index)
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
