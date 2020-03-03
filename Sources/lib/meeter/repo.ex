defmodule Meeter.Repo do
  use Ecto.Repo,
    otp_app: :meeter,
    adapter: Ecto.Adapters.Postgres
end
