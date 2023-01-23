import Config

config :ecto_app, EctoApp.Repo,
  database: "ecto_app",
  username: "ecto_app",
  password: "ecto_app_psql",
  hostname: "postgres",
  port: "5432"

config :ecto_app, ecto_repos: [EctoApp.Repo]

if Mix.env() == :dev do
  config :mix_test_watch,
    tasks: [
      "credo"
    ]
end
