defmodule EctoApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_app,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.2"},
      {:postgrex, "~> 0.15"},
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end
end
