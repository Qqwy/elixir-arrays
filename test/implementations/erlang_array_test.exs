defmodule Arrays.Implementations.ErlangArrayTest do
  use ExUnit.Case, async: true

  describe "Arrays module (with ErlangArray as implementation)" do
    alias Arrays.Test.Support.Arrays.DoctestErlangArray, as: Arrays
    doctest Arrays, except: [empty: 1]
  end

  alias Arrays.Implementations.ErlangArray
  doctest Arrays.Implementations.ErlangArray
end
