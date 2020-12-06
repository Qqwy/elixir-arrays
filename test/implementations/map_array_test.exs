defmodule Implementations.MapArrayTest do
  use ExUnit.Case, async: true

  describe "Enumerable" do
    test "slice/1" do
      assert Enum.at(Arrays.new([1, 2, 3]), 0) == 1
    end
  end
end
