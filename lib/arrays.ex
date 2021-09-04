# NOTE: We store the AST of the body of the module separately
# such that we can compile it one more time in the thest environment,
# but then with `ErlangArray` as default representation.
#
# This allows us to re-use all doctests for the ErlangArray as well as the MapArray.
contents = quote do
  @current_default_array inspect(@default_array_implementation)

  @moduledoc """
  Well-structured Arrays with fast random-element-access for Elixir, offering a common interface with multiple implementations with varying performance guarantees that can be switched in your configuration.

  ## Using `Arrays`

  ### Some simple examples:

  #### Constructing Arrays

  By calling `Arrays.new` or `Arrays.empty`:

      iex> Arrays.new(["Dvorak", "Tchaikovsky", "Bruch"])
      ##{@current_default_array}<["Dvorak", "Tchaikovsky", "Bruch"]>

  By using `Collectable`:

      iex> [1, 2, 3] |> Enum.into(Arrays.new())
      ##{@current_default_array}<[1, 2, 3]>
      iex> for x <- 1..2, y <- 4..5, into: Arrays.new(), do: {x, y}
      ##{@current_default_array}<[{1, 4}, {1, 5}, {2, 4}, {2, 5}]>

  #### Some common array operations:

  - Indexing is fast.
  - The full Access calls are supported,
  - Variants of many common `Enum`-like functions that keep the result an array (rather than turning it into a list), are available.

      iex> words = Arrays.new(["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"])
      ##{@current_default_array}<["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]>
      iex> Arrays.size(words) # Runs in constant-time
      9
      iex> words[3] # Indexing is fast
      "fox"
      iex> words = put_in(words[2], "purple") # All of `Access` is supported
      ##{@current_default_array}<["the", "quick", "purple", "fox", "jumps", "over", "the", "lazy", "dog"]>
      iex> Arrays.map(words, &String.upcase/1) # Map a function, keep result an array
      ##{@current_default_array}<["THE", "QUICK", "PURPLE", "FOX", "JUMPS", "OVER", "THE", "LAZY", "DOG"]>
      iex> lengths = Arrays.map(words, &String.length/1)
      ##{@current_default_array}<[3, 5, 6, 3, 5, 4, 3, 4, 3]>
      iex> Arrays.reduce(lengths, 0, &Kernel.+/2) # `reduce_right` is supported as well.
      36

  Concatenating arrays:

      iex> Arrays.new([1, 2, 3]) |> Arrays.concat(Arrays.new([4, 5, 6]))
      ##{@current_default_array}<[1, 2, 3, 4, 5, 6]>

  ### Rationale


  Algorithms that use arrays can be used while abstracting away from the underlying representation.
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


  Note: `FunLand` is an optional dependency of this library, so its functionality will only be available if `:fun_land` is also added to your `mix.exs` dependencies list.

  #### Enumerable

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


  #### Collectable

      iex> [10, 20, 30, 40] |> Enum.into(Arrays.new())
      ##{@current_default_array}<[10, 20, 30, 40]>


  #### Access

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



  square-bracket access, `get_in`, `put_in` and `update_in` are very fast operations.
  Unless `pop`/`pop_in` is used for the last element in the array, is a very slow operation,
  as it requires moving of all elements after the given index in the array.

  Both positive indexes (counting from zero) and negative indexes
  (`-1` is the last element, `-2` the second-to-last element, etc.) are supported.

  However, if `positive_index > Arrays.size(array)` or `negative_index < -Arrays.size(array)`,
  an ArgumentError is raised:

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

  #### Insertable

      iex> arr = Arrays.new()
      iex> {:ok, arr} = Insertable.insert(arr, 42)
      iex> {:ok, arr} = Insertable.insert(arr, 100)
      iex> arr
      ##{@current_default_array}<[42, 100]>

  #### Extractable

      iex> Extractable.extract(Arrays.new())
      {:error, :empty}
      iex> {:ok, {3, arr}} = Extractable.extract(Arrays.new([1, 2, 3]))
      iex> arr
      ##{@current_default_array}<[1, 2]>


  #### FunLand.Reducible

  Note: `FunLand` is an optional dependency of this library.

      iex> Arrays.new([1,2,3,4]) |> FunLand.reduce(0, &(&1+&2))
      10

  #### FunLand.Mappable

      iex> Arrays.new([1, 2, 3, 4]) |> FunLand.Mappable.map(fn x -> x * 2 end)
      ##{@current_default_array}<[2, 4, 6, 8]>

  ## Arrays vs Lists

  Elixir widely uses `List` as default collection type.
  Compared to lists, Arrays have the folowing differences:

  - Arrays keep track of their *size*. The size of a list needs to be computed.
  - Arrays allow fast¹ element *indexing*. Indexing later elements in a list slows down linearly in the size of the list.
  - Arrays allow fast *slicing*. For lists, this slows down the further away from the head of the list we are.
  - Pushing a single element to the _end_ of an array is fast¹. Pushing a single element to the end of a list is very slow (the whole list needs to be copied), taking linear time.
  - *Pushing* a single element to the _start_ of an array is slow, taking linear time (the whole array needs to be moved around). Pushing a single element to the head of a list is fast, taking constant time.
  - *Concatenating* arrays takes time proportional to the size of the second array (individual elements are pushed to the end). Concatenating two lists takes time proportional to the length of the first list. This means that repeated appending
  - Arrays are always well-formed. In certain cases, Lists are allowed to be improper.
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
      ##{@current_default_array}<[]>


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

  #### Using the MapArray
      iex> Arrays.empty([default: 42, size: 5, implementation: Arrays.Implementations.MapArray])
      ##{@current_default_array}<[42, 42, 42, 42, 42]>

  #### Using the ErlangArray
      iex> Arrays.empty([default: "Empty" , size: 1, implementation: Arrays.Implementations.ErlangArray])
      #Arrays.Implementations.ErlangArray<["Empty"]>

  """
  def empty(options \\ []) do
    impl_module =
      Keyword.get(
        options,
        :implementation,
        default_array_implementation()
      )

    options = Keyword.delete(options, :implementation)
    impl_module.empty(options)
  end

  defp default_array_implementation() do
    Application.get_env(:arrays, :default_array_implementation, @default_array_implementation)
  end

  @doc """
  Creates a new, empty array with default options.

      iex> Arrays.new()
      ##{@current_default_array}<[]>
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
      ##{@current_default_array}<[nil, nil, nil]>

      iex> Arrays.new(["Hello"], size: 1)
      ##{@current_default_array}<["Hello"]>

      iex> Arrays.new(["this", "will", "not", "fit"], size: 2)
      ##{@current_default_array}<["this", "will"]>

  """
  @spec new(Enum.t(), keyword) :: array()
  def new(enumerable, options) do
    size = Keyword.get(options, :size, nil)
    options = Keyword.delete(options, :size)

    if size == nil do
      new_empty(enumerable, options)
    else
      count = Enum.count(enumerable)

      cond do
        count == size ->
          new_empty(enumerable, options)

        count > size ->
          new_empty(Enum.slice(enumerable, 0, size), options)

        count < size ->
          resize(new_empty(enumerable, options), size)
      end
    end
  end

  defp new_empty(enumerable, options) do
    Enum.into(enumerable, empty(options))
  end

  @doc """
  The number of elements in the array.

  Looking up the size of an array is fast: this function runs in constant time.

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
      ##{@current_default_array}<[2, 4, 6]>
  """
  @spec map(array, (current_value :: value -> updated_value :: value)) :: array
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
  Retrieves the value stored in `array` of the element at `index`.

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
  Replaces the element in `array` at `index` with `value`.


      iex> Arrays.new([4, 5, 6]) |> Arrays.replace(1, 69)
      ##{@current_default_array}<[4, 69, 6]>

  Just like `get/2`, negative indices are supported.

      iex> Arrays.new([7, 8, 9]) |> Arrays.replace(-1, 33)
      ##{@current_default_array}<[7, 8, 33]>
  """
  # TODO implement negative indexes here rather than impl-defined.
  @spec replace(array, index, value :: any) :: array
  defdelegate replace(array, index, value), to: Arrays.Protocol

  @doc """
  Removes an element from the array `array`, resetting the element at `index` to the array's default value.

      iex> Arrays.new([7, 8, 9]) |> Arrays.reset(2)
      ##{@current_default_array}<[7, 8, nil]>

  Just like `get/2`, negative indices are supported.

      iex> Arrays.new([7, 8, 9]) |> Arrays.reset(-2)
      ##{@current_default_array}<[7, nil, 9]>
  """
  # TODO implement negative indexes here rather than impl-defined.
  @spec reset(array, index) :: any
  defdelegate reset(array, index), to: Arrays.Protocol

  @doc """
  Appends ('pushes') a single element to the end of the array.

      iex> Arrays.new([1, 2, 3]) |> Arrays.append(4)
      ##{@current_default_array}<[1, 2, 3, 4]>

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
      ##{@current_default_array}<[1, 2, 3]>

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
      ##{@current_default_array}<[1, 2, 3, nil, nil, nil]>

      iex> Arrays.new([1, 2, 3], default: 42) |> Arrays.resize(5)
      ##{@current_default_array}<[1, 2, 3, 42, 42]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(1)
      ##{@current_default_array}<[1]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(0)
      ##{@current_default_array}<[]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.resize(3)
      ##{@current_default_array}<[1, 2, 3]>

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


  @doc """
  Returns an array where all elements of `right` are added to the end of `left`.

  `left` should be an array. `right` can be either an array or any other enumerable.

  Takes time proportional to the number of elements in `right`.
  Essentially, each element in `right` is appended to `left` in turn.

      iex> Arrays.new([1, 2, 3]) |> Arrays.concat(Arrays.new([4, 5, 6]))
      ##{@current_default_array}<[1, 2, 3, 4, 5, 6]>

      iex> Arrays.new([1, 2, 3]) |> Arrays.concat((1..10))
      ##{@current_default_array}<[1, 2, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]>

  """
  @doc since: "1.1.0"
  @spec concat(array(), array() | Enumerable.t()) :: array()
  def concat(left, right) do
    Enum.into(right, left)
  end

  @doc """
  Turns an array of arrays (or other enumerable of enumerables) into a single array.

  See also `concat/2`.
  """
  @doc since: "1.1.0"
  @spec concat(Enumerable.t()) :: array()
  def concat(enumerable_of_enumerables) do
    enumerable_of_enumerables
    |> Enum.reduce(Arrays.new(), &Enum.into/2)
  end

  @doc """
  Returns a sub-array of the given array by `index_range`.

  `index_range` must be a `Range`. Given an array, it drops elements before
  `index_range.first` (zero-based), then it takes elements until element
  `index_range.last` (inclusively).

  Indexes are normalized, meaning that negative indexes will be counted from the
  end (for example, -1 means the last element of the array).

  If `index_range.last` is out of bounds, then it is assigned as the index of the
  last element.

  If the normalized `index_range.first` is out of bounds of the given array,
  or if it is is greater than the normalized `index_range.last`,
  then an empty array is returned.

      iex> Arrays.slice(Arrays.new([1, 2, 3, 4, 5, 6]), 2..4)
      ##{@current_default_array}<[3, 4, 5]>

      iex> Arrays.slice(Arrays.new(1..100), 5..10)
      ##{@current_default_array}<[6, 7, 8, 9, 10, 11]>

      iex> Arrays.slice(Arrays.new(1..10), 5..20)
      ##{@current_default_array}<[6, 7, 8, 9, 10]>

      # last five elements (negative indexes)
      iex> Arrays.slice(Arrays.new(1..30), -5..-1)
      ##{@current_default_array}<[26, 27, 28, 29, 30]>

  If values are out of bounds, it returns an empty array:

      iex> Arrays.slice(Arrays.new(1..10), 11..20)
      ##{@current_default_array}<[]>

      # first is greater than last
      iex> Arrays.slice(Arrays.new(1..10), 6..5)
      ##{@current_default_array}<[]>

  See also `slice/3`.

  There are two reasons to use this function over `Enum.slice/2`.
  """
  @doc since: "1.1.0"
  @spec slice(array, Range.t()) :: array
  def slice(array, index_range)

  @doc """
  Returns a sub-array of the given array, from `start_index` (zero-based)
  with `amount` number of elements if available.

  Given an array, it skips elements right before element `start_index`; then,
  it takes `amount` of elements, returning as many elements as possible if there
  are not enough elements.

  A negative `start_index` can be passed, which means the array is enumerated
  once and the index is counted from the end (for example, -1 starts slicing from
  the last element).

  It returns an empty array if `amount` is 0 or if `start_index` is out of bounds.

      iex> Arrays.slice(Arrays.new([1, 2, 3, 4, 5, 6]), 2, 4)
      ##{@current_default_array}<[3, 4, 5, 6]>

      iex> Arrays.slice(Arrays.new([1, 2, 3, 4, 5, 6]), 10, 20)
      ##{@current_default_array}<[]>

      iex> Arrays.slice(Arrays.new(1..100), 5, 10)
      ##{@current_default_array}<[6, 7, 8, 9, 10, 11, 12, 13, 14, 15]>

      # amount to take is greater than the number of elements
      iex> Arrays.slice(Arrays.new(1..10), 5, 100)
      ##{@current_default_array}<[6, 7, 8, 9, 10]>

      iex> Arrays.slice(Arrays.new(1..10), 5, 0)
      ##{@current_default_array}<[]>

      # using a negative start index
      iex> Arrays.slice(Arrays.new(1..10), -6, 3)
      ##{@current_default_array}<[5, 6, 7]>

      # out of bound start index (positive)
      iex> Arrays.slice(Arrays.new(1..10), 10, 5)
      ##{@current_default_array}<[]>

      # out of bound start index (negative)
      iex> Arrays.slice(Arrays.new(1..10), -11, 5)
      ##{@current_default_array}<[]>

  See also `slice/2`.

  Compare with `Enum.slice/3`.
  """
  @doc since: "1.1.0"
  @spec slice(array, index, non_neg_integer) :: array
  def slice(array, start_index, amount)

  # NOTE: we are not using the new range step syntax here
  # for backwards-compatibility with older Elixir versions.
  def slice(array, index_range = %{first: first, last: last, step: step}) do
    if step == 1 or (step == -1 and first > last) do
      slice_range(array, first, last)
    else
        raise ArgumentError,
          "Arrays.slice/2 does not accept ranges with custom steps, got: #{inspect(index_range)}"
    end
  end
  def slice(array, index_range = %{__struct__: Range, first: first, last: last}) do
    step = if first <= last, do: 1, else: -1
    slice(array, Map.put(index_range, :step, step))
  end

  defp slice_range(array, first, last) when last >= first and last >= 0 and first >= 0 do
    slice_any(array, first, last - first + 1)
  end

  defp slice_range(array = %impl{}, first, last) do
    count = Arrays.Protocol.size(array)
    first = if first >= 0, do: first, else: first + count
    last = if last >= 0, do: last, else: last + count
    amount = last - first + 1

    if first >= 0 and first < count and amount > 0 do
      Arrays.Protocol.slice(array, first, min(amount, count - first))
    else
      Arrays.empty(implementation: impl)
    end
  end

  def slice(array = %impl{}, start_index, 0) when is_integer(start_index), do: Arrays.empty(implementation: impl)

  def slice(array, start_index, amount)
    when is_integer(start_index) and is_integer(amount) and amount >= 0 do
    slice_any(array, start_index, amount)
  end

  defp slice_any(array = %impl{}, start, amount) when start < 0 do
    count = Arrays.Protocol.size(array)
    start = count + start
    if start >= 0 do
      Arrays.Protocol.slice(array, start, min(amount, count - start))
    else
      Arrays.empty(implementation: impl)
    end
  end

  defp slice_any(array = %impl{}, start, amount) when start >= 0 do
    count = Arrays.Protocol.size(array)
    if start >= count do
      Arrays.empty(implementation: impl)
    else
      Arrays.Protocol.slice(array, start, min(amount, count - start))
    end
  end
end

Module.create(Arrays,
  quote [location: :keep] do
    @default_array_implementation Arrays.Implementations.MapArray
    unquote(contents)

    # This is only relevant in the testing environment.
    # On normal compilation, we do not need to make the compiled module larger.

    # coveralls-ignore-start
    if Mix.env() == :test do
      @internal_module_contents unquote(Macro.escape(contents))
      @doc false
      def __internal_module_contents__ do
        @internal_module_contents
      end
    end
    # coveralls-ignore-stop
  end, Macro.Env.location(__ENV__)
)

