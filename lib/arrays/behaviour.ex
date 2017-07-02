defmodule Arrays.Behaviour do
  @type option :: {:default, any} | {atom, any}
  @type options :: [option]
  @callback empty(options) :: Arrays.Protocol.t
end
