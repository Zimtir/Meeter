# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :meeter,
  ecto_repos: [Meeter.Repo]

# Configures the endpoint
config :meeter, MeeterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7+kdKdoIuVE6Ttn0enhPkd+HmJ/5QdYtXTlSJWU/k6LH6xrwJPLAtQmFVDOpkq+V",
  render_errors: [view: MeeterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Meeter.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "g8CXC9Tg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
