# Copy of `Arrays` module with different default representation
# so that we can re-use the doctests for `ErlangArray`.
Module.create(Arrays.Test.Support.Arrays.DoctestErlangArray,
  quote [location: :keep] do
    @default_array_implementation Arrays.Implementations.ErlangArray
    unquote(Arrays.__internal_module_contents__())
  end, Macro.Env.location(__ENV__)
)

