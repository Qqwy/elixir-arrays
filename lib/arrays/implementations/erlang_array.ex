defmodule Arrays.Implementations.ErlangArray do
  @moduledoc """
  Wraps the Erlang [`:array`](http://erlang.org/doc/man/array.html) module.

  These kinds of arrays use a 'functional tree' format,
  with a leaf size of 10 nodes wide ([ref.](https://github.com/erlang/otp/blob/maint/lib/stdlib/src/array.erl#L108)).

  Common operations like element access thus take O(log10(n)) time.


  Note that when no custom default value is specified,
  `nil` will be used, rather than `:array`'s default of `:undefined`.
  """

  alias __MODULE__

  defstruct contents: :array.new([default: nil])

  @doc """
  Create an `%ErlangArray{}`-struct from an `:array`-record.


      iex> :array.new([]) |> ErlangArray.from_raw()
      #Arrays.Implementations.ErlangArray<[]>
  """
  def from_raw(raw_array) do
    %ErlangArray{contents: raw_array}
  end

  @doc """
  Turn an %ErlangArray{}-struct back into an `:array`-record.

        iex> Arrays.new([1, 2, 3], implementation: Arrays.Implementations.ErlangArray) |> ErlangArray.to_raw()
        {:array, 3, 10, nil, {1, 2, 3, nil, nil, nil, nil, nil, nil, nil}}
  """
  def to_raw(%ErlangArray{contents: contents}) do
    contents
  end

  if Code.ensure_loaded?(FunLand.Mappable) do
    Module.eval_quoted(__MODULE__,
      quote do
        use FunLand.Mappable
        @doc """
        Implementation for `FunLand.Mappable.map`.

        Note that `FunLand` is an optional dependency of `Arrays` so you need to add it to your `mix.exs` dependencies manually to use it.
        """
        def map(array, fun), do: Arrays.Protocol.map(array, fun)
    end)
  end

  if Code.ensure_loaded?(FunLand.Reducible) do
    Module.eval_quoted(__MODULE__,
      quote do
        use FunLand.Reducible, auto_enumerable: false

        @impl FunLand.Reducible
        @doc """
        Implementation for `FunLand.Reducible.reduce`.

        Note that `FunLand` is an optional dependency of `Arrays` so you need to add it to your `mix.exs` dependencies manually to use it.
        """
        def reduce(array = %ErlangArray{}, acc, fun) do
          Arrays.Protocol.reduce(array, acc, fun)
        end
      end)
  end

  @behaviour Access

  @impl Access
  def fetch(%ErlangArray{contents: contents}, index) when index >= 0 do
    if index >= :array.size(contents) do
      :error
    else
      {:ok, :array.get(index, contents)}
    end
  end

  def fetch(%ErlangArray{contents: contents}, index) when index < 0 do
    size = :array.size(contents)

    if index < (-size) do
      :error
    else
      {:ok, :array.get(index + size, contents)}
    end
  end

  @undefined_pop_message """
  There is no efficient implementation possible to remove an element from a random location in an array, so `Access.pop/2` (and returning `:pop` from `Access.get_and_update/3` ) are not supported by #{inspect(__MODULE__)}. If you want to remove the last element, use `Arrays.extract/1`.
  """ |> String.trim

  @impl Access
  def get_and_update(array = %ErlangArray{contents: contents}, index, function) when index >= 0 do
    if index >= :array.size(contents) do
      raise ArgumentError
    else
      value = :array.get(index, contents)
      case function.(value) do
        {get, new_value} ->
          new_contents = :array.set(index, new_value, contents)
          {get, %ErlangArray{array | contents: new_contents}}
        :pop ->
          raise ArgumentError, @undefined_pop_message
      end
    end
  end

  @impl Access
  def get_and_update(array = %ErlangArray{contents: contents}, index, function) when index < 0 do
    if index < (-:array.size(contents)) do
      raise ArgumentError
    else
      get_and_update(array, index + :array.size(contents), function)
    end
  end

  @impl Access
  def pop(%ErlangArray{}, _index) do
    raise ArgumentError, @undefined_pop_message
  end

  @doc false
  def build_slice(%ErlangArray{contents: contents}, start, length, into) do
    for index <- start..(start + length - 1), into: into do
      :array.get(index, contents)
    end
  end

  defimpl Arrays.Protocol do
    alias Arrays.Implementations.ErlangArray

    @impl true
    def size(%ErlangArray{contents: contents}) do
      :array.size(contents)
    end

    @impl true
    def map(array = %ErlangArray{contents: contents}, fun) do
      new_contents = :array.map(fn _index, val -> fun.(val) end, contents)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def reduce(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldl(fn _index, val, acc -> fun.(val, acc) end, acc, contents)
    end

    @impl true
    def reduce_right(%ErlangArray{contents: contents}, acc, fun) do
      :array.foldr(fn _index, val, acc -> fun.(acc, val) end, acc, contents)
    end

    @impl true
    def default(%ErlangArray{contents: contents}) do
      :array.default(contents)
    end

    @impl true
    def get(%ErlangArray{contents: contents}, index) do
      if index < 0 do
        :array.get(index + :array.size(contents), contents)
      else
        :array.get(index, contents)
      end
    end

    @impl true
    def replace(array = %ErlangArray{contents: contents}, index, item) do
      new_contents =
        if index < 0 do
          :array.set(index + :array.size(contents), item, contents)
        else
          :array.set(index, item, contents)
        end

      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def reset(array = %ErlangArray{contents: contents}, index) do
      new_contents =
        if index < 0 do
          :array.reset(index + :array.size(contents), contents)
        else
          :array.reset(index, contents)
        end

      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def append(array = %ErlangArray{contents: contents}, item) do
      new_contents = :array.set(:array.size(contents), item, contents)
      %ErlangArray{array | contents: new_contents}
    end

    @impl true
    def resize(array = %ErlangArray{contents: contents}, new_size, default) do
      IO.inspect(contents)
      changed = change_default(contents, default)
      IO.inspect(changed)
      new_contents = :array.resize(new_size, changed)
      IO.inspect(new_contents)
      %ErlangArray{array | contents: new_contents}
    end

    defp change_default(raw_array, new_default) do
      sparse_size = :array.sparse_size(raw_array)
      size = :array.size(raw_array)
      {:array, a, b, _old_default, vals} = raw_array
      new_array = {:array, a, b, new_default, vals}
      Enum.reduce(sparse_size..(size - 1), new_array, fn index, arr ->
        :array.reset(index, arr)
      end)
    end

    @impl true
    def extract(array = %ErlangArray{contents: contents}) do
      case :array.size(contents) do
        0 ->
          {:error, :empty}

        size ->
          index = size - 1
          elem = :array.get(index, contents)
          contents_rest = :array.resize(index, contents)
          array_rest = %ErlangArray{array | contents: contents_rest}
          {:ok, {elem, array_rest}}
      end
    end

    @impl true
    def to_list(%ErlangArray{contents: contents}) do
      :array.to_list(contents)
    end

    @impl true
    def slice(array = %ErlangArray{}, start, amount) do
      @for.build_slice(array, start, amount, empty(default: :array.default(array.contents)))
    end

    @impl true
    def empty(options) when is_list(options) do
      contents = :array.new([default: nil] ++ options)
      %ErlangArray{contents: contents}
    end
  end
end
