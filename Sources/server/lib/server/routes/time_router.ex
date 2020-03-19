defmodule Server.TimeRouter do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  @content_type "application/json"
  Storage.Server.start_link()

  get "/add" do
    conn
    |> put_resp_content_type(@content_type)
    |> send_resp(
      200,
      Poison.encode!(%{
        response_type: "success",
        message: Storage.Server.put(:store, "time", 18)
      })
    )
  end

  get "/get" do
    conn
    |> put_resp_content_type(@content_type)
    |> send_resp(
      200,
      Poison.encode!(%{
        response_type: "success",
        message: Storage.Server.get(:store, "time")
      })
    )
  end

  match _ do
    send_resp(conn, 404, "Requested page not found...")
  end
end
