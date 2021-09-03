defmodule Arrays do
  @default_array_implementation Arrays.Implementations.MapArray
  @moduledoc """
  Well-structured Arrays with fast random-element-access for Elixir, offering a common interface with multiple implementations with varying performance guarantees that can be switched in your configuration.

  ## Using `Arrays`

  The general idea is that algorithms that use arrays can be used while abstracting away from the underlying representation.
  Which array implementation/representation is actually used, can then later be configured/compared, to make a trade-off between ease-of-use and time/memory efficiency.

  `Arrays` itself comes with two built-in implementations:

  - `Arrays.Implementations.ErlangArray` wraps the Erlang `:array` module, allowing this time-tested implementation to be used with all common Elixir protocols and syntactic sugar.
  - `Arrays.Implementations.MapArray` is a simple implementation that uses a map with sequential integers as keys.

  By default, #{@default_array_implementation} is used when creating new array objects, but this can be configured by either changing the default in your whole application, or by passing an option to a specific invocation of [`new/0-2`](`new/0`), or [`empty/0-1`](`empty/0`).

  ### Protocols

  Besides being able to use all functions in this module,
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
  """

  @typedoc """
  Any datatype implementing the `Arrays.Protocol` as well as the `Arrays.Behaviour`.
  """
  @type array :: Arrays.Protocol.t()

  @typedoc """
  An array index can be either a nonnegative index (up to the size of the array),
  or a negative index (then we count backwards from the size.)
  """
  @type index :: Arrays.Protocol.index()

  @typedoc """
  Type of the kind of value stored in the array.
  In practice, arrays can store anything so this is an alias for `any`.
  """
  @type value :: Arrays.Protocol.value()

  @doc """
  Creates a new, empty, array.

      iex> Arrays.empty()
      #Arrays.Implementations.MapArray<[]>


  ### Options

  - `implementation:` Module name of array-implementation to use.
       - When not specified, will use the implementation which is configured in `:arrays, :default_array_implementation`,
       - When no configuration is specified either, #{@default_array_implementation} will be used by default.

        iex> Arrays.empty([implementation: Arrays.Implementations.MapArray])
        #Arrays.Implementations.MapArray<[]>

        iex> Arrays.empty([implementation: Arrays.Implementations.ErlangArray])
        #Arrays.Implementations.ErlangArray<[]>

  Any other option is passed on to the particular array implementation.
  Not all array implementations recognize all options.
  However, the following two options are very common (and supported by both built-in implementations, `Arrays.Implementations.ErlangArray` and `Arrays.Implementations.MapArray`):

  - `default:` Value that empty elements should start with. (Default: `nil`)
  - `size:` Size of the array at start. (Default: 0)

        # Using the MapArray
        iex> Arrays.empty([default: 42, size: 5, implementation: Arrays.Implementations.MapArray])
        #Arrays.Implementations.MapArray<[42, 42, 42, 42, 42]>

        # Using the ErlangArray
        iex> Arrays.empty([default: "Empty" , size: 1, implementation: Arrays.Implementations.ErlangArray])
        #Arrays.Implementations.ErlangArray<["Empty"]>

  """
  def empty(options \\ []) do
    impl_module =
      Keyword.get(
        options,
        :implementation,
        Application.get_env(:arrays, :default_array_implementation, @default_array_implementation)
      )

    options = Keyword.delete(options, :implementation)
    impl_module.empty(options)
  end

  @doc """
  Creates a new, empty array with default options.

      iex> Arrays.new()
      #Arrays.Implementations.MapArray<[]>
  """
  @spec new() :: array()
  def new(), do: new([], [])

  @doc """
  Creates a new array, receiving its elements from the given `Enumerable`, with default options.
  """
  @spec new(Enum.t()) :: array()
  def new(enumerable), do: new(enumerable, [])

  @doc """
  Creates a new array, receiving its elements from the given `Enumerable`, with the given options.

  Accepts the same options as `empty/1`.

      iex> Arrays.new([], size: 3)
      #Arrays.Implementations.MapArray<[nil, nil, nil]>

      iex> Arrays.new(["Hello"], size: 1)
      #Arrays.Implementations.MapArray<["Hello"]>

      iex> Arrays.new(["this", "will", "not", "fit"], size: 2)
      #Arrays.Implementations.MapArray<["this", "will"]>

  """
  @spec new(Enum.t(), keyword) :: array()
  def new(enumerable, options) do
    default = Keyword.get(options, :default, nil)
    size = Keyword.get(options, :size, nil)

    if size == nil do
      new_empty(enumerable, default)
    else
      count = Enum.count(enumerable)

      cond do
        count == size ->
          new_empty(enumerable, default)

        count > size ->
          new_empty(Enum.slice(enumerable, 0, size), default)

        count < size ->
          resize(new_empty(enumerable, default), size)
      end
    end
  end

  defp new_empty(enumerable, default) do
    Enum.into(enumerable, empty(default: default))
  end

  @doc """
  The number of elements in the array.

      iex> Arrays.new([2, 4, 6]) |> Arrays.size()
      3

      iex> Arrays.new([]) |> Arrays.size()
      0

  See also `resize/2`.
  """
  @spec size(array) :: non_neg_integer
  defdelegate size(array), to: Arrays.Protocol

  @doc """
  Maps a function over an array, returning a new array.

      iex> Arrays.new([1,2,3]) |> Arrays.map(fn val -> val * 2 end)
      #Arrays.Implementations.MapArray<[2, 4, 6]>
  """
  @spec map(array, (index, current_value :: value -> updated_value :: value)) :: array
  defdelegate map(array, fun), to: Arrays.Protocol

  @doc """
  Reduce an array to a single value, by calling the provided accumulation function for each element, left-to-right.

  If the array is empty, the accumulator argument `acc` is returned as result immediately.
  Otherwise, the function is called on all elements in the array, in order, with `acc` as *second* argument.
  The result of each of these function calls creates the new accumulator passed to the next invocation.

      iex> Arrays.new([1, 2, 3]) |> Arrays.reduce(0, fn val, sum -> sum + val end)
      6

      iex> Arrays.new(["the", "quick", "brown", "fox"]) |> Arrays.reduce("", fn val, result -> result <> " " <> val end)
      " the quick brown fox"

      iex> Arrays.new([]) |> Arrays.reduce(1234, fn val, mul -> mul * val end)
      1234

  See also `reduce_right/3`.
  """
  @spec reduce(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  defdelegate reduce(array, acc, fun), to: Arrays.Protocol

  @doc """
  Reduce an array to a single value, by calling the provided accumulation function for each element, right-to-left.


  If the array is empty, the accumulator argument `acc` is returned as result immediately.
  Otherwise, the function is called on all elements in the array, in reverse (right-to-left) order, with `acc` as *first* argument.
  The result of each of these function calls creates the new accumulator passed to the next invocation.

      iex> Arrays.new([1, 2, 3]) |> Arrays.reduce_right(0, fn sum, val -> sum + val end)
      6

      iex> Arrays.new(["the", "quick", "brown", "fox"]) |> Arrays.reduce_right("", fn result, val -> result <> " " <> val end)
      " fox brown quick the"

      iex> Arrays.new([]) |> Arrays.reduce_right(1234, fn mul, val -> mul * val end)
      1234


  See also `reduce/3`.

  """
  @spec reduce_right(array, acc :: any, (acc :: any, item :: any -> any)) :: array
  defdelegate reduce_right(array, acc, fun),to: Arrays.Protocol

  @doc """
  Returns which value is currently used as 'default' for elements that have no value of their own.

  Common array definitions use a 'sparse' implementation where elements not explicitly having a different value, are assumed to have this 'default' value.
  The particular default value can be set by passing the related option when calling `new/2` or `empty/1`.
  If no other default element is set, it will be `nil`.

      iex> Arrays.new([2, 4, 6]) |> Arrays.default()
      nil
      iex> Arrays.new([2, 4, 6], default: 42) |> Arrays.default()
      42

  """
  @spec default(array) :: any
  defdelegate default(array), to: Arrays.Protocol

  @doc """
  The value stored in `array` of the element at `index`.

  Array indexes start at *zero*.

      iex> Arrays.new([3, 6, 9]) |> Arrays.get(0)
      3
      iex> Arrays.new([3, 6, 9]) |> Arrays.get(1)
      6

  As Array types also implement the `Access` behaviour,
  the `[]` (square-bracket) syntactic sugar can also be used:

      iex> myarray = Arrays.new([2, 4, 8])
      iex> myarray[0]
      2
      iex> myarray[1]
      4

  ## Negative indexes

  It is also possible to use negative indexes, to read elements starting from the right side of the array.
  For example, index `-1` works equivalently to `size - 1`, if your array has `size`  elements.


      iex> names = Arrays.new(["Alice", "Bob", "Charlie", "David"])
      iex> Arrays.get(names, -2)
      "Charlie"
      iex> names[-1]
      "David"

  """
  # TODO implement negative indexes here rather than impl-defined.
  @spec get(array, index) :: any
  defdelegate get(array, index), to: Arrays.Protocol

  @doc """
  Replaces the element in array `array` at index `index` with `value`.


      iex> Arrays.new([4, 5, 6]) |> Arrays.replace(1, 69)
      #Arrays.Implementations.MapArray<[4, 69, 6]>

      Just like `get/2`, negative indices are supported.

      iex> Arrays.new([7, 8, 9]) |> Arrays.replace(-1, 33)
      #Arrays.Implementations.MapArray<[7, 8, 33]>
  """
  # TODO implement negative indexes here rather than impl-defined.
  @spec replace(array, index, value :: any) :: array
  defdelegate replace(array, index, value), to: Arrays.Protocol

  @doc """
  Removes an element from the array `array`, resetting the element at `index` to the array's default value.

      iex> Arrays.new([7, 8, 9]) |> Arrays.reset(2)
      #Arrays.Implementations.MapArray<[7, 8, nil]>

  Just like `get/2`, negative indices are supported.

      iex> Arrays.new([7, 8, 9]) |> Arrays.reset(-2)
      #Arrays.Implementations.MapArray<[7, nil, 9]>
  """
  # TODO implement negative indexes here rather than impl-defined.
  @spec reset(array, index) :: any
  defdelegate reset(array, index), to: Arrays.Protocol

  @doc """
  Appends ('pushes') a single element to the end of the array.

      iex> Arrays.new([1, 2, 3]) |> Arrays.append(4)
      #Arrays.Implementations.MapArray<[1, 2, 3, 4]>

  See also `extract/1`.
  """
  @spec append(array, item :: any) :: array
  defdelegate append(array, item), to: Arrays.Protocol

  @doc """
  Extracts ('pops') a single element from the end of the array.

  Returns `{:ok, item_that_was_removed, array_without_item}` if the array was non-empty.
  When called on an empty array, `{:error, :empty}` is returned.

      iex> {:ok, {elem, arr}} = Arrays.new([1,2,3,4]) |> Arrays.extract()
      iex> elem
      4
      iex> arr
      #Arrays.Implementations.MapArray<[1, 2, 3]>

      iex> Arrays.new([]) |> Arrays.extract()
      {:error, :empty}

  See also `append/2`.
  """
  @spec extract(array) :: {:ok, {item :: any, array}} | {:error, :empty}
  defdelegate extract(array), to: Arrays.Protocol

  @doc """
  Changes the size of the array.

  When the array becomes larger, new elements at the end will al receive the `default` value.
  When the array becomes smaller, elements larger than the new `size` will be dropped.

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(6)
      #Arrays.Implementations.MapArray<[1, 2, 3, nil, nil, nil]>

      iex> Arrays.new([1, 2, 3], default: 42) |> Arrays.resize(5)
      #Arrays.Implementations.MapArray<[1, 2, 3, 42, 42]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(1)
      #Arrays.Implementations.MapArray<[1]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(0)
      #Arrays.Implementations.MapArray<[]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(3)
      #Arrays.Implementations.MapArray<[1, 2, 3]>

  See also `size/1`.
  """
  @spec resize(array, size :: non_neg_integer) :: array
  defdelegate resize(array, size), to: Arrays.Protocol

  @doc """
  Transforms the array into a list.

      iex> Arrays.new([1, 2, 3]) |> Arrays.to_list
      [1, 2, 3]
  """
  @spec to_list(array) :: list
  defdelegate to_list(array), to: Arrays.Protocol
end
