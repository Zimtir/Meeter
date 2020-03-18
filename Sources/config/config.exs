use Mix.Config

config :server, Server.Endpoint, port: 4000
config :server, redirect_url: "http://localhost:4000/test"

import_config "#{Mix.env()}.exs"
