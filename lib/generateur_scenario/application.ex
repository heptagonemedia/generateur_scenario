defmodule GenerateurScenario.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: GenerateurScenario.Worker.start_link(arg)
      # {GenerateurScenario.Worker, arg}
      GenerateurScenario.Repo,
    ]

    **TODO: Add choix des proportions des scénarios**

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GenerateurScenario.Supervisor]
    Supervisor.start_link(children, opts)
  end
end