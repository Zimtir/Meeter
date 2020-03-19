defmodule Storage.Application do
  use Supervisor

  def start_link(opts \\ []) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    children = [
      # in the examples, they use the module as `name`, but I think it's
      # confusing at the moment
      {Storage.Server, name: :store}
    ]

    # :one_for_one means that if a child dies, it will be the only one restarted.
    Supervisor.init(children, strategy: :one_for_one)
  end
end
