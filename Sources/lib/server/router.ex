defmodule Server.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  @content_type "application/json"

  get "/test" do
    conn
    |> put_resp_content_type(@content_type)
    |> send_resp(200, message())
  end

  match _ do
    send_resp(conn, 404, "Requested page not found...")
  end

  defp message do
    Poison.encode!(%{
      response_type: "success",
      text: "Test message"
    })
  end
end
