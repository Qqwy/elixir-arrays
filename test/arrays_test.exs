defmodule ArraysTest do
  use ExUnit.Case

  doctest Arrays

  describe "Arrays.slice" do

    test "raises ArgumentError on range with non-1 step" do
      arr = Arrays.new([1, 2,3])
      if :erlang.system_info(:otp_release) == '24' do
        assert_raise(ArgumentError, fn ->
          Arrays.slice(arr, %{__struct__: Range, first: 1, last: 10, step: 2})
        end)

        assert_raise(ArgumentError, fn ->
          Arrays.slice(arr, %{__struct__: Range, first: 10, last: 1, step: -3})
        end)
      end
    end

    test "Works correctly on (old) ranges without a step " do
      arr = Arrays.new([1, 2,3])
      assert Arrays.new([1, 2, 3]) == Arrays.slice(arr, %{__struct__: Range, first: 0, last: 2})
    end
  end
end
