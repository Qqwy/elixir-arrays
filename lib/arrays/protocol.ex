defprotocol Arrays.Protocol do
  @type array :: t
  @type index :: integer

  @spec size(array) :: non_neg_integer
  def size(array)

  @spec map(array, (any -> any)) :: array
  def map(array)

  @spec reduce(array, (item :: any, acc :: any -> any)) :: array
  def reduce(array, acc, fun)

  @spec reduce_left(array, (any -> any)) :: array
  def reduce_left(array, acc, fun)

  # @spec default(array) :: any
  # def default(array)

  # @spec set_default(array, value) :: array
  # def set_default(array)

  @spec get(array, index) :: any
  def get(array, index)

  @spec set(array, index, value)
  def set(array, index, value)

  # @spec concat(array, array) :: array
  # def concat(array1, array2)

  @spec append(array, item :: any) :: array
  def append(array, item)

  # @spec prepend(array, item :: any) :: array
  # def prepend(array, item)

  @spec resize(array, size :: non_neg_integer) :: array
  def resize(array, size)
end
