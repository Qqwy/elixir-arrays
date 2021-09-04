defmodule Implementations.ErlangArrayTest do
  use ExUnit.Case, async: true

  describe "Arrays module (with ErlangArray as implementation)" do
    alias Arrays.Test.Support.Arrays.DoctestErlangArray, as: Arrays
    doctest Arrays, except: [empty: 1]
  end
end
