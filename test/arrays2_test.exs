
# Recompile Arrays module.
prev = Code.compiler_options[:ignore_module_conflict]
Code.compiler_options(%{:ignore_module_conflict => true})
Code.compile_file("lib/arrays.ex")
Code.compiler_options(%{:ignore_module_conflict => prev})

defmodule Arrays2Test do
  use ExUnit.Case

  Application.put_env(:arrays, :default_array_implementation, Arrays.Implementations.ErlangArray)

  doctest Arrays
end
