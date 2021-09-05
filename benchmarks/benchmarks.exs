defmodule Benchmarks do
  @warmup 0.5
  @time 0.5
  @memory_time 0.5
  @parallel 1

  @inputs (
    (5..22)
    |> Enum.map(&Integer.pow(2, &1))
    |> Enum.map(&(1..&1))
    |> Enum.map(fn range ->
      name = range.last |> Integer.to_string |> String.pad_leading(10, "0")
      {"#{name} elements", range}
    end)
  )

  def run_benchmarks() do
    concat_benchmark()
    random_access_benchmark()
    random_update_benchmark()
  end

  def concat_benchmark do
    Benchee.run(
      %{
        "Arrays.concat/2 (MapArray)" =>
          fn range ->
            Arrays.concat(Arrays.new(implementation: Arrays.Implementations.MapArray), range)
          end,
        "Arrays.concat/2 (ErlangArray)" =>
        fn range ->
          Arrays.concat(Arrays.new(implementation: Arrays.Implementations.ErlangArray), range)
        end,
        "Enum.concat/2 (list)" =>
        fn range->
          Enum.concat([], range)
        end
      },
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      memory_time: @memory_time,
      formatters: [
        Benchee.Formatters.Console,
        {Benchee.Formatters.HTML, file: "benchmark_runs/concat.html", auto_open: false},
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
             %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.MapArray)}
           end,
           before_each: fn input ->
             Map.put(input, :index, :rand.uniform(input.range.last) - input.range.first)
           end
          },
        "Arrays.get/2 (ErlangArray)" =>
          {fn input ->
            Arrays.get(input.array, input.index)
          end,
           before_scenario: fn range ->
             %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.MapArray)}
           end,
           before_each: fn input ->
             Map.put(input, :index, :rand.uniform(input.range.last) - input.range.first)
           end
          },
        "Enum.fetch/2 (list)" =>
          {fn input ->
            Enum.fetch!(input.list, input.index)
          end,
           before_scenario: fn range ->
             %{range: range, list: Enum.into(range, [])}
           end,
           before_each: fn input ->
             Map.put(input, :index, :rand.uniform(input.range.last) - input.range.first)
           end
          }
      },
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      parallel: @parallel,
      memory_time: @memory_time,
      formatters: [
        Benchee.Formatters.Console,
        {Benchee.Formatters.HTML, file: "benchmark_runs/random_access.html", auto_open: false},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/random_access.md", description: """
        Compares random element access (for reading).

        For arrays, `Arrays.get(myarray, index)` function can be used (myarray[index] will behave similarly as it uses `get` internally.)

        For lists, `Enum.fetch(list, index)` is used.

        Note that we do not check for a collection with more than 10_000 elements,
        as lists will be so slow at that time,
        that I cannot finish its benchmark on my computer.
        """
        }
      ]
    )
  end

  def random_update_benchmark() do
    Benchee.run(
      %{
        "Arrays.replace/3 (MapArray)" =>
          {fn input ->
            Arrays.replace(input.array, input.index, input.value)
          end,
           before_scenario: fn range ->
             %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.MapArray)}
           end,
          },
        "Arrays.replace/3 (ErlangArray)" =>
          {fn input ->
            Arrays.replace(input.array, input.index, input.value)
          end,
           before_scenario: fn range ->
             %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.MapArray)}
           end,
          },
        "put_in/2 (MapArray)" =>
          {fn input ->
            put_in(input.array[input.index], input.value)
          end,
          before_scenario: fn range ->
            %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.MapArray)}
          end,
          },
        "put_in/2 (ErlangArray)" =>
          {fn input ->
            put_in(input.array[input.index], input.value)
          end,
          before_scenario: fn range ->
            %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.MapArray)}
          end,
          },
        "List.replace_at/3" =>
          {fn input ->
            List.replace_at(input.list, input.index, input.value)
          end,
           before_scenario: fn range ->
             %{range: range, list: Enum.into(range, [])}
           end,
          }
      },
      before_each: fn input ->
        Map.put(input, :index, :rand.uniform(input.range.last) - input.range.first, value: :rand.uniform())
      end,
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      parallel: @parallel,
      memory_time: @memory_time,
      formatters: [
        Benchee.Formatters.Console,
        {Benchee.Formatters.HTML, file: "benchmark_runs/random_access.html", auto_open: false},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/random_access.md", description: """
        Compares random element replacement.

        For arrays, we check `Arrays.replace/3`.
        Note that this is used under the hood by the Access protocol.

        For lists, `Enum.fetch(list, index)` is used.

        Note that we do not check for a collection with more than 10_000 elements,
        as lists will be so slow at that time,
        that I cannot finish its benchmark on my computer.
        """
        }
      ]
    )
  end
end

Benchmarks.run_benchmarks()
