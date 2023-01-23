defmodule EctoApp.Repo do
  use Ecto.Repo,
    otp_app: :ecto_app,
    adapter: Ecto.Adapters.Postgres
end
