defmodule Arrays.Implementations.MapArrayTest do
  use ExUnit.Case, async: true

  alias Arrays.Implementations.MapArray
  doctest Arrays.Implementations.MapArray


  describe "Arrays.slice" do

    test "raises ArgumentError on range with non-1 step" do
      arr = Arrays.new([1, 2,3], implementation: MapArray)
      assert_raise(ArgumentError, fn ->
        Arrays.slice(arr, %{__struct__: Range, first: 1, last: 10, step: 2})
      end)

      assert_raise(ArgumentError, fn ->
        Arrays.slice(arr, %{__struct__: Range, first: 10, last: 1, step: -3})
      end)
    end
  end

  test "Works correctly on (old) ranges without a step " do
    arr = Arrays.new([1, 2,3], implementation: MapArray)
    assert Arrays.new([1, 2, 3]) == Arrays.slice(arr, %{__struct__: Range, first: 0, last: 2})
  end
end
