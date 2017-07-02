defmodule Arrays.Implementations.ErlangArray do
  alias __MODULE__

  @moduledoc """
  Wraps the Erlang `:array` module.

  (See: http://erlang.org/doc/man/array.html)
  """
  defstruct [:contents]

  def empty(options) do
    contents = :array.new([{:fixed, false} | options])
    %ErlangArray{contents: contents}
  end

  use FunLand.Mappable
  def map(array = %ErlangArray{contents: contents}, fun) do
    new_contents = :array.map(fun, contents)
    %ErlangArray{array | contents: new_contents}
  end

  use FunLand.Reducable
  def reduce(%ErlangArray{contents: contents}, acc, fun) do
    :array.foldr(fun, acc, contents)
  end

  defimpl Arrays.Protocol do
    alias Arrays.Implementations.ErlangArray

    def size(%ErlangArray{contents: contents}) do
      :array.size(contents)
    end

    def map(array = %ErlangArray{contents: contents}, fun) do
      new_contents = :array.map(fun, contents)
      %ErlangArray{array | contents: new_contents}
    end

    def reduce(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldr(fun, acc, contents)
    end

    def reduce_left(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldl(fun, acc, contents)
    end

    def default(%ErlangArray{contents: contents}) do
      :array.default(contents)
    end

    def get(%ErlangArray{contents: contents}, index) do
      if index < 0 do
        :array.get(contents, index + :array.size(contents))
      else
        :array.get(contents, index)
      end
    end

    def set(array = %ErlangArray{contents: contents}, index, item) do
      new_contents =
        if index < 0 do
          :array.set(contents, index + :array.size(contents), item)
        else
          :array.set(contents, index, item)
        end
      %ErlangArray{array | contents: new_contents}
    end

    def reset(array = %ErlangArray{contents: contents}, index) do
      new_contents =
      if index < 0 do
        :array.reset(contents, index + :array.size(contents))
      else
        :array.reset(contents, index)
      end
      %ErlangArray{array | contents: new_contents}
    end

    def append(array = %ErlangArray{contents: contents}, item) do
      new_contents = :array.set(contents, :array.size(contents), item)
      %ErlangArray{array | contents: new_contents}
    end

    def resize(array = %ErlangArray{contents: contents}, new_size) do
      new_contents = :array.resize(contents, new_size)
      %ErlangArray{array | contents: new_contents}
    end

    def extract(array = %ErlangArray{contents: contents}) do
      case :array.size(contents) do
        0 -> {:error, :empty}
        size ->
          index = size - 1
          elem = :array.get(contents, index)
          contents_rest = :array.resize(contents, index)
          array_rest = %ErlangArray{array | contents: contents_rest}
          {:ok, {elem, array_rest}}
      end
    end

    def to_list(%ErlangArray{contents: contents}) do
      :array.to_list(contents)
    end
  end
end
