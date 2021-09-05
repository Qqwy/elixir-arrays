defprotocol Arrays.Protocol do
  @moduledoc """
  This protocol is implemented by all array types.

  Do not call functions in this module directly if you want to use an array in your code.
  Instead, use the functions in the `Arrays` module, which will use the methods of this protocol
  (as well as the `Arrays.Behaviour` behaviour) internally.
  """
  @typedoc """
  Any datatype implementing the `Arrays.Protocol` as well as the `Arrays.Behaviour`.
  """
  @type array :: t

  @typedoc """
  An array index can be either a nonnegative index (up to the size of the array),
  or a negative index (then we count backwards from the size.)
  """
  @type index :: integer

  @typedoc """
  Type of the kind of value stored in the array.
  In practice, arrays can store anything so this is an alias for `any`.
  """
  @type value :: any

  @doc """
  The number of elements in the array.

  Called by `Arrays.size/1`
  """
  @spec size(array) :: non_neg_integer
  def size(array)

  @doc """
  Maps a function over an array, returning a new array.

  Called by `Arrays.map/2`
  """
  @spec map(array, (index, current_value :: value -> updated_value :: value)) :: array
  def map(array, fun)

  @doc """
  Reduce an array to a single value, by calling the provided accumulation function for each element, left-to-right.

  Note that `fun` takes the accumulator as _second_ (right) parameter and the item as _first_ (left) parameter.

  Called by `Arrays.reduce/3`
  """
  @spec reduce(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  def reduce(array, acc, fun)

  @doc """
  Reduce an array to a single value, by calling the provided accumulation function for each element, right-to-left.

  Note that `fun` takes the accumulator as _first_ (left) parameter and the item as _second_ (right) parameter.

  Called by `Arrays.reduce_right/3`
  """
  @spec reduce_right(array, acc :: any, (acc :: any, item :: any -> any)) :: array
  def reduce_right(array, acc, fun)

  @doc """
  Returns which value is currently used as 'default' for elements that have no value of their own.

  Called by `Arrays.default/1`
  """
  @spec default(array) :: any
  def default(array)

  @doc """
  Retrieves the value stored in `array` of the element at `index`.

  Called by `Arrays.get/2`
  """
  @spec get(array, index) :: any
  def get(array, index)

  @doc """
  Replaces the element in `array` at `index` with `value`.

  Called by `Arrays.replace/3`
  """
  @spec replace(array, index, item :: any) :: array
  def replace(array, index, item)

  @doc """
  Removes an element from the array `array`, resetting the element at `index` to the array's default value.

  Called by `Arrays.reset/2`
  """
  @spec reset(array, index) :: any
  def reset(array, index)

  @doc """
  Appends ('pushes') a single element to the end of the array.

  Called by `Arrays.append/2`
  """
  @spec append(array, item :: any) :: array
  def append(array, item)

  @doc """
  Extracts ('pops') a single element from the end of the array.

  Called by `Arrays.extract/1`
  """
  @spec extract(array) :: {:ok, {item :: any, array}} | {:error, :empty}
  def extract(array)

  @doc """
  Changes the size of the array.

  Called by `Arrays.resize/2`
  """
  @spec resize(array, size :: non_neg_integer) :: array
  def resize(array, size)

  @doc """
  Transforms the array into a list.

  Called by `Arrays.to_list/1`
  """
  @spec to_list(array) :: list
  def to_list(array)

  @doc """
  Return a contiguous slice of some elements in the array.

  Handling of bounds is handled in the `Arrays` module,
  so we know for certain that `0 <= start_index < size(array)`
  and `start_index + length < size(array)`.
  """
  @spec slice(array, index, non_neg_integer) :: array
  def slice(array, start_index, amount)

  @typedoc """
  Option passed to `c:empty/1`.

  The option `:default` is recognized by all array implementations.
  A particular array implementation might recognize other specialized options.
  """
  @type option :: {:default, any} | {atom, any}

  @typedoc """
  A list of options passed to `c:empty/1`
  """
  @type options :: [option]


  @doc """
  Should create a new instance of your custom array type.

  This is called internally by functions such as `Arrays.new/0` and `Arrays.empty/1`.

  NOTE: This function will not be dispatched by normal protocol handling, but rather directly.
  The first (and only) parameter will be a list of options.

  c.f. `t:options`.
  """
  def empty(options)
end
