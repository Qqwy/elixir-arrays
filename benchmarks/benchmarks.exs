defmodule Benchmarks do
  @warmup 0.5
  @time 1
  @inputs (
    (5..10)
    |> Enum.map(&Integer.pow(2, &1))
    |> Enum.map(&(1..&1))
    |> Enum.map(&({inspect(&1), &1}))
  )


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
      warmup: @warmup,
      time: @time,
      # memory_time: 2,
      formatters: [
        Benchee.Formatters.Console,
        # {Benchee.Formatters.HTML, file: "benchmark_runs/concat.html", auto_open: false},
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
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      # memory_time: 2,
      formatters: [
        Benchee.Formatters.Console,
        # {Benchee.Formatters.HTML, file: "benchmark_runs/random_access.html", auto_open: false},
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

  # useful to skip implementations that get ridiculously slow at larger sizes
  # and change their implementation to a still slow but less memory-intensive no-op.
  def skip_if_too_large(fun) do
    fn input = %{range: 1..size} ->
      if(size > 1000) do
        Process.sleep(1)
      else
        fun.(input)
      end
    end
  end

  def run_benchmarks() do
    # concat_benchmark()
    random_access_benchmark()
  end
end

Benchmarks.run_benchmarks()
