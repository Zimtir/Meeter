defmodule Server.Endpoint do
  use Plug.Router
  use Plug.Debugger
  use Plug.ErrorHandler

  alias Server.Router
  alias Plug.{Cowboy}

  require Logger

  plug(Plug.Logger, log: :debug)
  plug(:match)
  plug(CORSPlug, origin: "*")

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison
  )

  plug(:dispatch)

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  def start_link(_opts) do
    with {:ok, [port: port] = config} <- config() do
      Logger.info("Starting server at http://localhost:#{port}/")
      Cowboy.http(__MODULE__, [], config)
    end
  end

  forward("/api/router", to: Router)
  forward("/api/time", to: Server.TimeRouter)

  defp config, do: Application.fetch_env(:server, __MODULE__)

  def handle_errors(%{status: status} = conn, %{kind: _kind, reason: _reason, stack: _stack}),
    do: send_resp(conn, status, "Something went wrong")
end
