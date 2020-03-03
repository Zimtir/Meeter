defmodule MeeterWeb.PageController do
  use MeeterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
