if Code.ensure_loaded?(PersistentVector) do

  defimpl Arrays.Protocol, for: PersistentVector do

    @impl true
    def size(array = %PersistentVector{}) do
      PersistentVector.count(array)
    end

    # TODO
    # @impl true
    # def map(array = %PersistentVector{}, fun) do
    #   raise "TODO"
    # end

    @impl true
    def reduce(array = %PersistentVector{}, acc, fun) do
      PersistentVector.reduce(array, acc, fun)
    end

    # @impl true
    # def reduce_right(array = %PersistentVector{}, acc, fun) do
    #   PersistentVector.red
    # end

    # TODO
    @impl true
    def default(%PersistentVector{}) do
      nil
    end

    @impl true
    def get(array = %PersistentVector{}, index) do
      if index < 0 do
        PersistentVector.get(array, PersistentVector.count(array) - index)
      else
        PersistentVector.get(array, index)
      end
    end

    @impl true
    defdelegate replace(array, index, element), to: __MODULE__, as: :set

    def set(array = %PersistentVector{}, index, item) do
      if index < 0 do
        PersistentVector.set(array, PersistentVector.count(array) - index, item)
      else
        PersistentVector.set(array, index, item)
      end
    end

    @impl true
    def append(array = %PersistentVector{}, item) do
      PersistentVector.append(array, item)
    end

    # TODO
    # @impl true
    # def resize(array = %PersistentVector{}, new_size) do
    # end

    @impl true
    def extract(array = %PersistentVector{}) do
      # PersistentVector.pop(array, PersistentVector.count(array) - 1)
      if PersistentVector.empty?(array) do
        {:error, :empty}
      else
        elem = PersistentVector.last(array)
        array_rest = PersistentVector.remove_last(array)
        {:ok, {elem, array_rest}}
      end
    end

    @impl true
    def to_list(array = %PersistentVector{}) do
      PersistentVector.to_list(array)
    end

    # TODO
    # @impl true
    # def slice(array = %ErlangArray{}, start, amount) do
    #   @for.build_slice(array, start, amount, @for.empty(default: :array.default(array.contents)))
    # end

    @impl true
    def empty(options) when is_list(options) do
      PersistentVector.new()
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
          def reduce(array = %PersistentVector{}, acc, fun) do
            Arrays.Protocol.reduce(array, acc, fun)
          end
        end)
    end
  end
end
