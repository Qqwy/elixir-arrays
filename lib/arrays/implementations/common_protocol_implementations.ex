for module <- [
      Arrays.Implementations.ErlangArray,
      Arrays.Implementations.MapArray
    ] do
  defimpl Inspect, for: module do
    import Inspect.Algebra

    def inspect(array, opts) do
      concat([
        "##{inspect(@for)}<",
        Inspect.List.inspect(Arrays.Protocol.to_list(array), %{opts | charlists: :as_lists}),
        ">"
      ])
    end
  end

  defimpl Extractable, for: module do
    def extract(array) do
      Arrays.Protocol.extract(array)
    end
  end

  defimpl Insertable, for: module do
    def insert(array, item) do
      {:ok, Arrays.Protocol.append(array, item)}
    end
  end

  defimpl Collectable, for: module do
    def into(original) do
      {original,
       fn
         array, {:cont, value} -> Arrays.Protocol.append(array, value)
         array, :done -> array
         _, :halt -> :ok
       end}
    end
  end

  defimpl Enumerable, for: module do
    def member?(_array, _item), do: {:error, unquote(module)}

    def count(array) do
      {:ok, Arrays.Protocol.size(array)}
    end

    def reduce(_, {:halt, acc}, _) do
      {:halted, acc}
    end

    def reduce(array, {:suspend, acc}, fun) do
      {:suspended, acc, &reduce(array, &1, fun)}
    end

    def reduce(array, {:cont, acc}, fun) do
      case Arrays.Protocol.extract(array) do
        {:error, :empty} ->
          {:done, acc}

        {:ok, {elem, array_rest}} ->
          reduce(array_rest, fun.(elem, acc), fun)
      end
    end

    def slice(array) do
      size = Arrays.Protocol.size(array)
      {:ok, size, &Enumerable.List.slice(Arrays.Protocol.to_list(array), &1, &2, size)}
    end
  end
end
