defmodule ArraysTest do
    use ExUnit.Case

    doctest Arrays

    describe "Arrays module (with ErlangArray as implementation)" do
      alias Arrays.Test.Support.Arrays.DoctestErlangArray, as: Arrays
      doctest Arrays, except: [empty: 1]
    end

    test "Enumerable reduce suspended" do
      {:suspended, val, fun} =
        [1, 2, 3, 4]
        |> Enumerable.reduce({:suspend, 42}, fn val, acc -> {:cont, val + acc} end)

      assert {:done, 79} = fun.({:cont, 69})
    end
end
