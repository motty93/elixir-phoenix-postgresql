defmodule EctoApp.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      EctoApp.Repo
    ]

    opts = [strategy: :one_for_one, name: EctoApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
