defmodule Implementations.ErlangArrayTest do
  use ExUnit.Case, async: true

  describe "Arrays module (with ErlangArray as implementation)" do
    alias Arrays.Test.Support.Arrays.DoctestErlangArray, as: Arrays
    doctest Arrays, except: [empty: 1]
  end

  test "Enumerable reduce suspended (ErlangArray)" do
    {:suspended, 42, fun} =
      Arrays.new([1, 2, 3, 4], implementation: Arrays.Implementations.ErlangArray)
      |> Enumerable.reduce({:suspend, 42}, fn val, acc -> {:cont, val + acc} end)

    assert {:done, 79} = fun.({:cont, 69})
  end
end
