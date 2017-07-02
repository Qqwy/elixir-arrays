defmodule Arrays.Implementations.MapArray do
  alias __MODULE__

  @moduledoc """
  An array implementation based on the built-in Map structure.
  """
  defstruct [contents: %{}, default: default]

  def empty(options) do
    default = Keyword.get(options, :default, nil)
    size = Keyword.get(options, :size, 0)
    %MapArray{contents: construct(default, size), default: default}
  end

  defp construct(default, size) do
    (0..size) |> Enum.into(%{}, &{&1, default})
  end

  defimpl Arrays.Protocol do
    alias Arrays.Implementations.MapArray

    def size(%MapArray{contents: contents}) do
      map_size(contents)
    end

    def reduce(%MapArray{contents: contents}, acc, fun) do
      reduce(contents, acc, fun, 0, :maps.size(contents))
    end

    defp reduce(contents, acc, fun, index, index), do: acc
    defp reduce(contents, acc, fun, index, max_index) do
      reduce(contents, fun.(contents[index], acc), fun, index + 1, max_index)
    end

    def reduce_left(%MapArray{contents: contents}, acc, fun) do
      reduce(contents, acc, fun, :maps.size(contents))
    end

    defp reduce_left(contents, acc, fun, 0), do: acc
    defp reduce_left(contents, acc, fun, index) do
      reduce(contents, fun.(contents[index], acc), fun, index - 1)
    end

    def default(%MapArray{default: default}) do
      default
    end

    def get(array = %MapArray{contents: contents}, index) when index > 0 and index < map_size(contents) do
      contents[index]
    end

    def get(array = %MapArray{contents: contents}, index) when index < 0 and index > -map_size(contents) do
      contents[index + map_size(contents)]
    end

    def set(array = %MapArray{contents: contents}, index, value) when index > 0 and index < map_size(contents) do
      new_contents = Map.put(contents, index, value)
      %MapArray{array | contents: new_contents}
    end
    def set(array = %MapArray{contents: contents}, index, value) when index < 0 and index > -(map_size(contents)) do
      Map.put(contents, index + map_size(contents), value)
      %MapArray{array | contents: new_contents}
    end

    def reset(array = %MapArray{contents: contents, default: default}, index) when index > 0 and index < map_size(contents) do
      new_contents = Map.put(contents, index, default)
      %MapArray{array | contents: new_contents}
    end
    def reset(array = %MapArray{contents: contents, default: default}, index, value) when index < 0 and index > -(map_size(contents)) do
                                                                                              Map.put(contents, index + map_size(contents), default)
                                                                                              %MapArray{array | contents: new_contents}
    end

    def append(array = %MapArray{contents: contents}, value) do
      new_contents = Map.put(contents, map_size(contents), value)
      %MapArray{array | contents: new_contents}
    end

    def resize(array = %MapArray{contents: contents, default: default}, size) do
      cur_size = map_size(contents)
      if size > cur_size do
        (cur_size..size) |> Enum.into(contents, &({&1, default}))
      else
        Map.drop(size..cur_size)
      end
    end
  end
end
