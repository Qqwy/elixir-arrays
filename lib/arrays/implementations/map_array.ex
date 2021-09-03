defmodule Arrays.Implementations.MapArray do
  @moduledoc """
  An array implementation based on the built-in Map structure.
  """

  @behaviour Arrays.Behaviour

  alias __MODULE__

  defstruct contents: %{}, default: nil

  @impl Arrays.Behaviour
  def empty(options) do
    default = Keyword.get(options, :default, nil)
    size = Keyword.get(options, :size, 0)
    %MapArray{contents: construct(default, size), default: default}
  end

  defp construct(_default, 0), do: %{}

  defp construct(default, size) do
    Enum.into(0..(size - 1), %{}, &{&1, default})
  end

  use FunLand.Mappable

  use FunLand.Reducible

  @impl FunLand.Reducible
  def reduce(%MapArray{contents: contents}, acc, fun) do
    reduce(contents, acc, fun, 0, :maps.size(contents))
  end

  defp reduce(_contents, acc, _fun, index, index), do: acc

  defp reduce(contents, acc, fun, index, max_index) do
    reduce(contents, fun.(contents[index], acc), fun, index + 1, max_index)
  end

  @behaviour Access

  @impl Access
  def fetch(%MapArray{contents: contents}, index)
      when index >= 0 and index < map_size(contents) do
    Map.fetch(contents, index)
  end

  def fetch(%MapArray{contents: contents}, index)
      when index < 0 and index >= -map_size(contents) do
    Map.fetch(contents, index + map_size(contents))
  end

  def fetch(%MapArray{}, _index), do: :error

  @impl Access
  def get_and_update(array = %MapArray{contents: contents}, index, function)
      when index >= 0 and index < map_size(contents) do
    {value, new_contents} = Map.get_and_update(contents, index, function)
    {value, %MapArray{array | contents: new_contents}}
  end

  @impl Access
  def get_and_update(array = %MapArray{contents: contents}, index, function)
      when index < 0 and index >= -map_size(contents) do
    {value, new_contents} = Map.get_and_update(contents, index + map_size(contents), function)
    {value, %MapArray{array | contents: new_contents}}
  end

  def get_and_update(array = %MapArray{}, _index, function) do
    {res, _} = function.(nil)
    {res, array}
  end

  @impl Access
  def pop(array = %MapArray{contents: contents, default: default}, index)
      when index >= 0 and index < map_size(contents) do
    {value, new_contents} = Map.pop(contents, index, default)
    {value, %MapArray{array | contents: new_contents}}
  end

  def pop(array = %MapArray{contents: contents, default: default}, index)
      when index < 0 and index >= -map_size(contents) do
    {value, new_contents} = Map.pop(contents, index + map_size(contents), default)
    {value, %MapArray{array | contents: new_contents}}
  end

  defimpl Arrays.Protocol do
    alias Arrays.Implementations.MapArray

    @impl true
    def size(%MapArray{contents: contents}) do
      map_size(contents)
    end

    @impl true
    def map(array = %MapArray{contents: contents}, fun) do
      new_contents = :maps.map(fn _key, value -> fun.(value) end, contents)
      %MapArray{array | contents: new_contents}
    end

    @impl true
    def reduce(%MapArray{contents: contents}, acc, fun) do
      reduce(contents, acc, fun, 0, :maps.size(contents))
    end

    defp reduce(_contents, acc, _fun, index, index), do: acc

    defp reduce(contents, acc, fun, index, max_index) do
      reduce(contents, fun.(contents[index], acc), fun, index + 1, max_index)
    end

    @impl true
    def reduce_right(%MapArray{contents: contents}, acc, fun) do
      reduce_right(contents, acc, fun, :maps.size(contents))
    end

    defp reduce_right(_contents, acc, _fun, 0), do: acc

    defp reduce_right(contents, acc, fun, index) do
      reduce_right(contents, fun.(acc, contents[index - 1]), fun, index - 1)
    end

    @impl true
    def default(%MapArray{default: default}) do
      default
    end

    @impl true
    def get(%MapArray{contents: contents}, index)
        when index >= 0 and index < map_size(contents) do
      contents[index]
    end

    def get(%MapArray{contents: contents}, index)
        when index < 0 and index > -map_size(contents) do
      contents[index + map_size(contents)]
    end

    @impl true
    def replace(array = %MapArray{contents: contents}, index, value)
        when index >= 0 and index < map_size(contents) do
      new_contents = Map.put(contents, index, value)
      %MapArray{array | contents: new_contents}
    end

    def replace(array = %MapArray{contents: contents}, index, value)
        when index < 0 and index >= -map_size(contents) do
      new_contents = Map.put(contents, index + map_size(contents), value)
      %MapArray{array | contents: new_contents}
    end

    @impl true
    def reset(array = %MapArray{contents: contents, default: default}, index)
        when index >= 0 and index < map_size(contents) do
      new_contents = Map.put(contents, index, default)
      %MapArray{array | contents: new_contents}
    end

    def reset(array = %MapArray{contents: contents, default: default}, index)
        when index < 0 and index >= -map_size(contents) do
      new_contents = Map.put(contents, index + map_size(contents), default)
      %MapArray{array | contents: new_contents}
    end

    @impl true
    def append(array = %MapArray{contents: contents}, value) do
      new_contents = Map.put(contents, map_size(contents), value)
      %MapArray{array | contents: new_contents}
    end

    @impl true
    def resize(%MapArray{default: default}, 0) do
      MapArray.empty(default: default)
    end

    def resize(array = %MapArray{contents: contents}, size) when map_size(contents) == size do
      array
    end

    def resize(array = %MapArray{contents: contents, default: default}, new_size)
        when new_size > map_size(contents) do
      cur_size = map_size(contents)
      new_contents = Enum.into(cur_size..(new_size - 1), contents, &{&1, default})
      %MapArray{array | contents: new_contents}
    end

    def resize(array = %MapArray{contents: contents}, new_size)
        when new_size < map_size(contents) do
      cur_size = map_size(contents)
      new_contents = Map.drop(contents, Enum.to_list(new_size..(cur_size - 1)))
      %MapArray{array | contents: new_contents}
    end

    @impl true
    def extract(array = %MapArray{contents: contents}) when map_size(contents) > 0 do
      index = map_size(contents) - 1
      elem = contents[index]
      new_contents = Map.delete(contents, index)
      new_array = %MapArray{array | contents: new_contents}
      {:ok, {elem, new_array}}
    end

    def extract(%MapArray{contents: contents}) when map_size(contents) == 0 do
      {:error, :empty}
    end

    @impl true
    def to_list(%MapArray{contents: contents}) do
      :maps.values(contents)
    end
  end
end
