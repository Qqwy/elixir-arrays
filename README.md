# Arrays


[![hex.pm version](https://img.shields.io/hexpm/v/arrays.svg)](https://hex.pm/packages/arrays)
[![Build Status](https://travis-ci.org/Qqwy/elixir-arrays.svg?branch=master)](https://travis-ci.org/Qqwy/elixir-arrays)

Well-structured Arrays with fast random-element-access for Elixir, offering a common interface with multiple implementations with varying performance guarantees that can be switched in your configuration.


## Implementations

By default, Arrays ships with:

- `Arrays.Implementations.MapArray`: An array with amortized O(1) element access, insertion and removal by using integer keys in a hashmap.
- `Arrays.Implementations.ErlangArray`: A relatively efficient purely functional implementation wrapping Erlang's `:array` library.

## Protocols and Behaviours

Array instances implement the following:

- Inspect
- Enumerable
- Collectable
- [Insertable](https://hex.pm/packages/insertable)
- [Extractable](https://hex.pm/packages/extractable)
- the Access behaviour

## Installation

Arrays is [available in Hex](https://hex.pm/packages/arrays) and can be installed
by adding `arrays` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:arrays, "~> 0.1.0"}
  ]
end
```

Documentation can be found at [https://hexdocs.pm/arrays](https://hexdocs.pm/arrays).

