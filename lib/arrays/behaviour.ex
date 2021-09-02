defmodule Arrays.Behaviour do
  @moduledoc """
  This module specifies the behaviour that all array-types should implement.

  Adding a new Array type is done by implementing `Arrays.Protocol`.
  However, Elixir protocols require the first argument to a function
  to be a value of the type that the protocol is implemented for.

  This is a problem for `empty`, as it does not take such value as first argument:
  it is used to _construct_ such a value in the first place!

  This means that besides implementing `Arrays.Protocol`, types should also add
  `@behaviour Arrays.Behaviour` to their module, and add a sensible definition for `empty/1`.
  """
  @type option :: {:default, any} | {atom, any}
  @type options :: [option]
  @callback empty(options) :: Arrays.Protocol.t()
end
