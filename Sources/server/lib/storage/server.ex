defmodule Storage.Server do
  use GenServer

  # Client interface

  def start_link(options \\ []) do
    GenServer.start_link(__MODULE__, :ok, options)
  end

  def get(store, key) do
    GenServer.call(store, {:get, key})
  end

  def put(store, key, value) do
    GenServer.call(store, {:put, key, value})
  end

  def delete(store, key) do
    GenServer.call(store, {:delete, key})
  end

  def stop(store, reason \\ :normal) do
    GenServer.stop(store, reason)
  end

  # Server interface

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_call({:get, key}, _from, state) do
    value = Map.get(state, key)
    {:reply, value, state}
  end

  def handle_call({:delete, key}, _from, state) do
    {value, new_state} = Map.pop(state, key)
    {:reply, value, new_state}
  end

  def handle_call({:put, key, value}, _from, state) do
    new_state = Map.put(state, key, value)
    {:reply, value, new_state[key]}
  end
end
