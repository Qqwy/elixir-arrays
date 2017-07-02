defmodule ArraysTest do
  use ExUnit.Case
  doctest Arrays

  test "greets the world" do
    assert Arrays.hello() == :world
  end
end
