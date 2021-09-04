# Arrays
![](https://raw.githubusercontent.com/Qqwy/elixir-arrays/master/brand/logo_text.png)


`Arrays` is a library to work with well-structured Arrays with fast random-element-access for Elixir, offering a common interface with multiple implementations with varying performance guarantees that can be switched in your configuration.

[![hex.pm version](https://img.shields.io/hexpm/v/arrays.svg)](https://hex.pm/packages/arrays)
[![Documentation](https://img.shields.io/badge/hexdocs-latest-blue.svg)](https://hexdocs.pm/arrays/index.html)
[![ci](https://github.com/Qqwy/elixir-arrays/actions/workflows/ci.yml/badge.svg)](https://github.com/Qqwy/elixir-arrays/actions/workflows/ci.yml)
[![Coverage Status](https://coveralls.io/repos/github/Qqwy/elixir-arrays/badge.svg?branch=master)](https://coveralls.io/github/Qqwy/elixir-arrays?branch=master)


## Installation

Arrays is [available in Hex](https://hex.pm/packages/arrays) and can be installed
by adding `arrays` to your list of dependencies in `mix.exs`:

```elixir
def deps do
[
  {:arrays, "~> 1.0.0"}
]
end
```

Documentation can be found at [https://hexdocs.pm/arrays](https://hexdocs.pm/arrays).

----

## Using `Arrays`
### Some simple examples:

#### Constructing Arrays

By calling `Arrays.new` or `Arrays.empty`:

```elixir
    iex> Arrays.new(["Dvorak", "Tchaikovsky", "Bruch"])
    #Arrays.Implementations.MapArray<["Dvorak", "Tchaikovsky", "Bruch"]>

    iex> Arrays.new(["Dvorak", "Tchaikovsky", "Bruch"], implementation; Arrays.Implementations.ErlangArray)
    #Arrays.Implementations.ErlangArray<["Dvorak", "Tchaikovsky", "Bruch"]>
```

By using `Collectable`:

```elixir
    iex> [1, 2, 3] |> Enum.into(Arrays.empty())
    #Arrays.Implementations.MapArray<[1, 2, 3]>
    iex> for x <- 1..2, y <- 4..5, into: Arrays.new(), do: {x, y}
    #Arrays.Implementations.MapArray<[{1, 4}, {1, 5}, {2, 4}, {2, 5}]>
```

#### Some common array operations:

  Indexing is constant-time,
  the full Access calls are supported,
  and variants of many common functions known from `Enum`, but that keep the result an array, are available.

```elixir
    iex> words = Arrays.new(["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"])
    #Arrays.Implementations.MapArray<["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]>
    iex> Arrays.size(words) # Runs in constant-time
    9
    iex> words[3] # Indexing is fast
    "fox"
    iex> words = put_in(words[2], "purple") # All of `Access` is supported
    #Arrays.Implementations.MapArray<["the", "quick", "purple", "fox", "jumps", "over", "the", "lazy", "dog"]>
    iex> # Common operations are available without having to turn the array back into a list (as `Enum` functions would do):
    iex> Arrays.map(words, &String.upcase/1) # Map a function, keep result an array
    #Arrays.Implementations.MapArray<["THE", "QUICK", "PURPLE", "FOX", "JUMPS", "OVER", "THE", "LAZY", "DOG"]>
    iex> lengths = Arrays.map(words, &String.length/1)
    #Arrays.Implementations.MapArray<[3, 5, 6, 3, 5, 4, 3, 4, 3]>
    iex> Arrays.reduce(lengths, 0, &Kernel.+/2) # `reduce_right` is supported as well.
    36
```

Concatenating arrays:

```elixir
    iex> Arrays.new([1, 2, 3]) |> Arrays.concat(Arrays.new([4, 5, 6]))
    #Arrays.Implementations.MapArray<[1, 2, 3, 4, 5, 6]>
```

### Rationale


Algorithms that use arrays can be used while abstracting away from the underlying representation.
Which array implementation/representation is actually used, can then later be configured/compared, to make a trade-off between ease-of-use and time/memory efficiency.

`Arrays` itself comes with two built-in implementations:

- `Arrays.Implementations.ErlangArray` wraps the Erlang `:array` module, allowing this time-tested implementation to be used with all common Elixir protocols and syntactic sugar.
- `Arrays.Implementations.MapArray` is a simple implementation that uses a map with sequential integers as keys.

By default, the MapArray implementation is used when creating new array objects, but this can be configured by either changing the default in your whole application, or by passing an option to a specific invocation of [`new/0-2`](`new/0`), or [`empty/0-1`](`empty/0`).

```elixir
iex> words = Arrays.new(["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"])
#
```

### Protocols

Besides being able to use all functions in the [`Arrays`](https://hexdocs.pm/arrays/Arrays.html) module,
one can use the following protocols and behaviours with them:

- From Elixir's standard library:
- `Enumerable`: Iterating over arrays
- `Collectable`: Creating arrays from collections
- the `Access` behaviour: access a particular element using square brackets, `put_in` etc.

- From common container libraries:
- `Insertable`: Append a single item from the end of an array
- `Extractable`: Take a single item from the end of an array
- `FunLand.Mappable`: Map a function over each element in the array, creating a new array with the results
- `FunLand.Reducible`: Reduce an array to a single value.


Note: `FunLand` is an optional dependency of this library, so its functionality will only be available if `:fun_land` is also added to your `mix.exs` dependencies list.

#### Enumerable

```elixir
    iex> myarray = Arrays.new([2, 1, 4, 2, 0])
    iex> Enum.sort(myarray)
    [0, 1, 2, 2, 4]
    iex> Enum.count(myarray)
    5
    iex> Enum.with_index(myarray)
    [{2, 0}, {1, 1}, {4, 2}, {2, 3}, {0, 4}]
    iex> Enum.slice(myarray, 1, 3)
    [1, 4, 2]

    iex> names = Arrays.new(["Ernie", "Bert", "Kermit"])
    iex> names |> Stream.map(&String.upcase/1) |> Enum.into(Arrays.new())
    ##{@current_default_array}<["ERNIE", "BERT", "KERMIT"]>

    iex> foods = Arrays.new(["Cheese", "Strawberries", "Cookies"])
    iex> foods |> Enum.take(2)
    ["Cheese", "Strawberries"]
```


#### Collectable

```elixir
    iex> [10, 20, 30, 40] |> Enum.into(Arrays.new())
    ##{@current_default_array}<[10, 20, 30, 40]>
```

#### Access

```elixir
    iex> arr = Arrays.new([1, 2, 3, 4])
    iex> arr = put_in(arr[2], 33)
    ##{@current_default_array}<[1, 2, 33, 4]>
    iex> arr = update_in(arr[1], (&(&1 * -2)))
    ##{@current_default_array}<[1, -4, 33, 4]>
    iex> arr = update_in(arr[-1], (&(&1 + 1)))
    ##{@current_default_array}<[1, -4, 33, 5]>
    iex> {33, arr} = pop_in(arr[-2])
    iex> arr
    ##{@current_default_array}<[1, -4, 5]>
    iex> {1, arr} = pop_in(arr[0])
    iex> arr
    ##{@current_default_array}<[-4, 5]>
    iex> {5, arr} = pop_in(arr[-1])
    iex> arr
    ##{@current_default_array}<[-4]>

    iex> arr2 = Arrays.new([10, 20, 30])
    iex> {20, arr2} = get_and_update_in(arr2[1], fn _ -> :pop end)
    iex> arr2
    ##{@current_default_array}<[10, 30]>
```


square-bracket access, `get_in`, `put_in` and `update_in` are very fast operations.
Unless `pop`/`pop_in` is used for the last element in the array, is a very slow operation,
as it requires moving of all elements after the given index in the array.

Both positive indexes (counting from zero) and negative indexes
(`-1` is the last element, `-2` the second-to-last element, etc.) are supported.

However, if `positive_index > Arrays.size(array)` or `negative_index < -Arrays.size(array)`,
an ArgumentError is raised:

```elixir
    iex> arr = Arrays.new([1,2,3,4])
    iex> pop_in(arr[4])
    ** (ArgumentError) argument error

    iex> arr = Arrays.new([1,2,3,4])
    iex> pop_in(arr[-5])
    ** (ArgumentError) argument error

    iex> arr = Arrays.new([1,2,3,4])
    iex> Access.fetch(arr, 4)
    :error
    iex> Access.fetch(arr, -5)
    :error

    iex> arr = Arrays.new([1,2,3,4])
    iex> update_in(arr[8], fn x -> x * 2 end)
    ** (ArgumentError) argument error

    iex> arr = Arrays.new([1,2,3,4])
    iex> update_in(arr[-8], fn x -> x * 2 end)
    ** (ArgumentError) argument error
```

#### Insertable

```
    iex> arr = Arrays.new()
    iex> {:ok, arr} = Insertable.insert(arr, 42)
    iex> {:ok, arr} = Insertable.insert(arr, 100)
    iex> arr
    ##{@current_default_array}<[42, 100]>
```

#### Extractable

```elixir
    iex> Extractable.extract(Arrays.new())
    {:error, :empty}
    iex> {:ok, {3, arr}} = Extractable.extract(Arrays.new([1, 2, 3]))
    iex> arr
    ##{@current_default_array}<[1, 2]>
```

#### FunLand.Reducible

Note: `FunLand` is an optional dependency of this library.

```elixir
    iex> Arrays.new([1,2,3,4]) |> FunLand.reduce(0, &(&1+&2))
    10
```

#### FunLand.Mappable

```elixir
    iex> Arrays.new([1, 2, 3, 4]) |> FunLand.Mappable.map(fn x -> x * 2 end)
    ##{@current_default_array}<[2, 4, 6, 8]>
```

## Arrays vs Lists

Elixir widely uses `List` as default collection type.
Arrays have the folowing differences:

- Arrays keep track of their size. The size of a list needs to be computed.
- Arrays allow fast¹ element indexing. Indexing later elements in a list slows down linearly in the size of the list.
- Pushing a single element to the _end_ of an array is fast¹. Pushing a single element to the end of a list is very slow, taking linear time.
- Pushing a single element to the _start_ of an array is slow, taking linear time. Pushing a single element to the head of a list is fast, taking constant time.
- Appending of arrays takes time proportional to the size of the second array. Appending two lists takes time proportional to the length of the first list. This means that repeated appending
- Lists are allowed to be improper. Arrays can never be improper.
- Many common operations in Elixir transform an enumerable into a list automatically. Arrays are made using `Arrays.new/0`, `Arrays.new/1` `Arrays.empty/0`, the `into:` option on a `for`, or `Enum.into`.

¹: Depending on the implementation, 'fast' is either _O(1)_ (constant time, regardless of array size) or _O(log(n))_ (logarithmic time, becoming a constant amount slower each time the array doubles in size.)

The linear time many operations on lists take, means that the operation becomes twice as slow when the list doubles in size.

## Implementing a new Array type

To add array-functionality to a custom datastructure, two things are required:

- Add an implementation for the `Arrays.Protocol` protocol.
- Add the `Arrays.Behaviour` to your datatype's module (`@behaviour Arrays.Behaviour`), and implement a sensible definition for `c:Arrays.Behaviour.empty/1`.

Besides these, you probably want to implement the above-mentioned protocols as well.
You can look at the source code of `Arrays.CommonProtocolImplementations` for some hints as to how those protocols can be easily implemented on top of the calls that the `Arrays.Protocol` protocol itself already provides.


----


## Changelog

- 1.0.0 - Stable release. Mayor overhaul, 100% test coverage, 100% documentation. 
- 0.1.0 - Initial version.
