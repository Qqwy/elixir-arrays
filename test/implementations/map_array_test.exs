defmodule Implementations.MapArrayTest do
  use ExUnit.Case, async: true

  test "Enumerable reduce suspended (MapArray)" do
    {:suspended, 42, fun} =
      Arrays.new([1, 2, 3, 4], implementation: Arrays.Implementations.MapArray)
      |> Enumerable.reduce({:suspend, 42}, fn val, acc -> {:cont, val + acc} end)

    assert {:done, 79} = fun.({:cont, 69})
  end
end
