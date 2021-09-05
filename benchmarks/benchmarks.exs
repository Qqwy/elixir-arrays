defmodule Benchmarks do
  @warmup 0.5
  @time 0.5
  @memory_time 0.5
  @parallel 1

  @inputs (
  (5..20)
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
    append_benchmark()
  end

  def concat_benchmark do
    Benchee.run(
      %{
        "Arrays.concat/2 (MapArray)" =>
        {fn input ->
          Arrays.concat(input.lhs, input.rhs)
        end,
         before_each: fn range ->
           %{range: range,
             lhs: range |> Enum.shuffle() |> Arrays.new(implementation: Arrays.Implementations.MapArray),
             rhs: range |> Enum.shuffle() |> Arrays.new(implementation: Arrays.Implementations.MapArray)
            }
         end
        },
        "Arrays.concat/2 (ErlangArray)" =>
      {fn input ->
        Arrays.concat(input.lhs, input.rhs)
      end,
       before_each: fn range ->
         %{range: range,
           lhs: range |> Enum.shuffle() |> Arrays.new(implementation: Arrays.Implementations.ErlangArray),
           rhs: range |> Enum.shuffle() |> Arrays.new(implementation: Arrays.Implementations.ErlangArray)
          }
       end
      },
        "Arrays.concat/2 (PersistentVector)" =>
      {fn input ->
        Arrays.concat(input.lhs, input.rhs)
      end,
       before_each: fn range ->
         %{range: range,
           lhs: range |> Enum.shuffle() |> Arrays.new(implementation: PersistentVector),
           rhs: range |> Enum.shuffle() |> Arrays.new(implementation: PersistentVector)
          }
       end
      },
        "Kernel.++/2 (list)" =>
      {fn input ->
        input.lhs ++ input.rhs
      end,
       before_each: fn range ->
         %{range: range,
           lhs: range |> Enum.shuffle(),
           rhs: range |> Enum.shuffle()
          }
       end
      }
      },
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      memory_time: @memory_time,
      parallel: @parallel,
      pre_check: true,
      formatters: [
        {Benchee.Formatters.CSV, file: "benchmark_runs/concat.csv"},
        {Benchee.Formatters.HTML, file: "benchmark_runs/concat.html", auto_open: false},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/concat.md", description: """
        Comparing `Arrays.concat` with `Kernel.++`,
        by concatenating two collections of the same size.
        """
        },
        Benchee.Formatters.Console
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
        "Arrays.get/2 (PersistentVector)" =>
      {fn input ->
        Arrays.get(input.array, input.index)
      end,
       before_scenario: fn range ->
         %{range: range, array: Arrays.new(range, implementation: PersistentVector)}
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
      pre_check: true,
      # memory_time: @memory_time,
      formatters: [
        {Benchee.Formatters.CSV, file: "benchmark_runs/random_access.csv"},
        {Benchee.Formatters.HTML, file: "benchmark_runs/random_access.html", auto_open: false},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/random_access.md", description: """
        Compares random element access (for reading).

        For arrays, `Arrays.get(myarray, index)` function can be used (myarray[index] will behave similarly as it uses `get` internally.)

        For lists, `Enum.fetch(list, index)` is used.
        """
        },
        Benchee.Formatters.Console
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
         %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.ErlangArray)}
       end,
      },
        "Arrays.replace/3 (PersistentVector)" =>
      {fn input ->
        Arrays.replace(input.array, input.index, input.value)
      end,
       before_scenario: fn range ->
         %{range: range, array: Arrays.new(range, implementation: PersistentVector)}
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
         %{range: range, array: Arrays.new(range, implementation: Arrays.Implementations.ErlangArray)}
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
        input
        |> Map.put(:index, :rand.uniform(input.range.last) - input.range.first)
        |> Map.put(:value, :rand.uniform())
      end,
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      parallel: @parallel,
      pre_check: true,
      # memory_time: @memory_time,
      formatters: [
        {Benchee.Formatters.CSV, file: "benchmark_runs/random_update.csv"},
        {Benchee.Formatters.HTML, file: "benchmark_runs/random_update.html", auto_open: false},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/random_update.md", description: """
        Compares random element replacement.

        For arrays, we check `Arrays.replace/3` as well as Access' `put_in`.
        These are similar but slightly different APIs for element replacement.

        For lists, `List.replace_at(list, index)` is used.
        """
        },
        Benchee.Formatters.Console
      ]
    )
  end

  def append_benchmark do
    Benchee.run(
      %{
        "Arrays.append/2 (MapArray)" =>
        {fn input ->
          Arrays.append(input.collection, input.value)
        end,
         before_each: fn input ->
             Map.put(input, :collection, input.range |> Enum.shuffle |> Arrays.new(implementation: Arrays.Implementations.MapArray))
         end
        },
        "Arrays.append/2 (ErlangArray)" =>
      {fn input ->
        Arrays.append(input.collection, input.value)
      end,
       before_each: fn input ->
           Map.put(input, :collection, input.range |> Enum.shuffle |> Arrays.new(implementation: Arrays.Implementations.ErlangArray))
       end
      },
        "Arrays.append/2 (PersistentVector)" =>
      {fn input ->
        Arrays.append(input.collection, input.value)
      end,
       before_each: fn input ->
         Map.put(input, :collection, input.range |> Enum.shuffle |> Arrays.new(implementation: PersistentVector))
       end
      },
        "list ++ [val] (list)" =>
      {fn input ->
        input.collection ++ [input.value]
      end,
       before_each: fn input ->
         Map.put(input, :collection, input.range |> Enum.shuffle |> Enum.into([]))
       end
      },
        "[val | list] (list, backwards)" =>
      {fn input ->
        [input.value | input.collection]
      end,
       before_each: fn input ->
           Map.put(input, :collection, input.range |> Enum.shuffle |> Enum.into([]))
       end
      }
      },
      before_each: fn range ->
        %{range: range, value: :rand.uniform(range.last)}
      end,
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      memory_time: @memory_time,
      parallel: @parallel,
      pre_check: true,
      formatters: [
        {Benchee.Formatters.CSV, file: "benchmark_runs/append.csv"},
        {Benchee.Formatters.HTML, file: "benchmark_runs/append.html", auto_open: false},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/append.md", description: """
        Comparing `Arrays.append` with appending a value to a list.
        """
        },
        Benchee.Formatters.Console
      ]
    )
  end
end

Benchmarks.run_benchmarks()
