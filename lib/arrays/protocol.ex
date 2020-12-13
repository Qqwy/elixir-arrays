defprotocol Arrays.Protocol do
  @type array :: t
  @type index :: integer
  @type value :: any

  @spec size(array) :: non_neg_integer
  def size(array)

  @spec map(array, (index, current_value :: value -> updated_value :: value)) :: array
  def map(array, fun)

  @spec reduce(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  def reduce(array, acc, fun)

  @spec reduce_left(array, acc :: any, (item :: any, acc :: any -> any)) :: array
  def reduce_left(array, acc, fun)

  @spec default(array) :: any
  def default(array)

  @spec get(array, index) :: any
  def get(array, index)

  @spec replace(array, index, item :: any) :: array
  def replace(array, index, item)

  @spec reset(array, index) :: any
  def reset(array, index)

  @spec append(array, item :: any) :: array
  def append(array, item)

  @spec extract(array) :: {:ok, {item :: any, array}} | {:error, :empty}
  def extract(array)

  @spec resize(array, size :: non_neg_integer) :: array
  def resize(array, size)

  @spec to_list(array) :: list
  def to_list(array)
end
