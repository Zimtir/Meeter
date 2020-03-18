use Mix.Config

config :server, Server.Endpoint, port: String.to_integer(System.get_env("PORT") || "4444")

config :server, redirect_url: System.get_env("REDIRECT_URL")
