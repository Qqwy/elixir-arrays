defmodule Arrays.CommonProtocolImplementations do
  @moduledoc """
  This module is only interesting for people wanting to implement their own array datatype.

  It does not contain any functions itself directly, but its source code might be useful to see example implementations
  of the various protocols and behaviours that Array types ought to implement.
  Most of these can probably be re-used 1:1 for custom Array types.
  """
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

        def reduce(array, acc, fun) do
          size = Arrays.Protocol.size(array)
          do_reduce(array, acc, fun, 0, size)
        end

        defp do_reduce(_, {:halt, acc}, _, _, _) do
          {:halted, acc}
        end

        defp do_reduce(array, {:suspend, acc}, fun, index, size) do
          {:suspended, acc, &do_reduce(array, &1, fun, index, size)}
        end

        defp do_reduce(_array, {:cont, acc}, _fun, index, index) do
          {:done, acc}
        end

        defp do_reduce(array, {:cont, acc}, fun, index, size) do
          elem = Arrays.Protocol.get(array, index)
          do_reduce(array, fun.(elem, acc), fun, index + 1, size)
        end

        def slice(array) do
          size = Arrays.Protocol.size(array)
          {:ok, size, &Enumerable.List.slice(Arrays.Protocol.to_list(array), &1, &2, size)}
        end
      end
  end

end
