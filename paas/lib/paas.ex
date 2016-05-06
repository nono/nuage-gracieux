defmodule Paas do
  @moduledoc """
  Paas is a kind of cozy-controller + cozy-monitor. It manages the platform, ie
  the stack and the applications. To start it:
  """

  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Start the endpoint when the application starts
      supervisor(Paas.Endpoint, []),
      # Here you could define other workers and supervisors as children
      # worker(Paas.Worker, [arg1, arg2, arg3]),
      worker(Paas.Chef, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Paas.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Paas.Endpoint.config_change(changed, removed)
    :ok
  end
end
