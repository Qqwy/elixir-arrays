defmodule Benchmarks do
  @inputs [1..10, 1..100, 1..1000, 1..10_000, 1..100_000] |> Enum.map(&({inspect(&1), &1}))


  def concat(range, impl) do
    Arrays.concat(Arrays.new(implementation: impl), (range))
  end

  def concat_lists(range) do
    Enum.concat([], (range))
  end

  def concat_benchmark do
    Benchee.run(
      %{
        "Arrays.concat (MapArray)" =>
          fn range ->
            concat(range, Arrays.Implementations.MapArray)
          end,
        "Arrays.concat (ErlangArray)" =>
        fn range ->
          concat(range, Arrays.Implementations.ErlangArray)
        end,
        "Enum.concat (list)" =>
        fn range->
          concat_lists(range)
        end
      },
      inputs: @inputs,
      memory_time: 2.
      formatters: [
        Benchee.Formatters.Console,
        {Benchee.Formatters.HTML, file: "benchmark_runs/concat.html", auto_open: false}
        {Benchee.Formatters.Markdown, file: "benchmark_runs/concat.md", description: """
        Comparing `Arrays.concat` with `Enum.concat` (which concatenates plain lists).

        Lists will probably always win out, as
        concatenating many elements to the end of a list can be done
        in a very fast way by building the list up in reverse (and reversing it at the end).

        However, it is a good baseline to see how much overhead the array implementations bring
        w.r.t. lists for this kind of operation.
        """
        }
      ]
    )
  end

  def random_access_benchmark() do
    Benchee.run(
      %{
        "Arrays.get/2 (MapArray)" =>
          {fn input ->
            Arrays.get(input.array, input.index)
          end,
           before_scenario: fn range ->
             %{range: range, array: Array.new(range, implementation: Arrays.Implementations.MapArray)}
           end,
           before: fn input ->
             Map.put(input, :index, :random.uniform(range.last) - range.first)
           end
          }
        "Arrays.get/2 (ErlangArray)" =>
        fn range ->
          {fn input ->
            Arrays.get(input.array, input.index)
          end,
           before_scenario: fn range ->
             %{range: range, array: Array.new(range, implementation: Arrays.Implementations.MapArray)}
           end,
           before: fn input ->
             Map.put(input, :index, :random.uniform(range.last) - range.first)
           end
          }
        end,
        "Enum.fetch/2 (list)" =>
        fn range->
          {fn input ->
            Enum.fetch!(input.list, input.index)
          end,
           before_scenario: fn range ->
             %{range: range, list: Enum.into(range, [])}
           end,
           before: fn input ->
             Map.put(input, :index, :random.uniform(range.last) - range.first)
           end
          }
        end
      },
      inputs: @inputs,
      memory_time: 2,
      formatters: [
        Benchee.Formatters.Console,
        {Benchee.Formatters.HTML, file: "benchmark_runs/concat.html", auto_open: false}
        {Benchee.Formatters.Markdown, file: "benchmark_runs/concat.md", description: """
        Compares random element access.

        For arrays, `Arrays.get(myarray, index)` function can be used (myarray[index] will behave similarly as it uses `get` internally.)

        For lists, `Enum.fetch(list, index)` is used.
        """
        }
      ]
    )
  end


  def run_benchmarks() do
    # concat_benchmark()
    random_access_benchmark()
  end
end

Benchmarks.run_benchmarks()
