defmodule Server.MixProject do
  use Mix.Project

  def project do
    [
      app: :server,
      version: "0.1.0",
      elixir: "~> 1.10.1",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Server.Application, []}
    ]
  end

  defp deps do
    [
      {:poison, "~> 3.1.0"},
      {:plug, "~> 1.9"},
      {:cowboy, "~> 2.7"},
      {:plug_cowboy, "~> 2.1.2"},
      {:credo, "~> 0.10.2", except: :prod, runtime: false}
    ]
  end
end
