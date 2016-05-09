defmodule Paas.Chef do
  @moduledoc """
  Give it some orders and it will take care of them.
  It can install an application for example.
  """

  use GenServer
  alias Paas.Recipe

  # Client

  def start_link do
    GenServer.start_link(__MODULE__, :ok, name: :chef)
  end

  def install(app) do
    timeout = 300_000  # 5 minutes
    GenServer.call :chef, {:install, app}, timeout
  end

  # Server callbacks

  def handle_call({:install, app}, _from, state) do
    IO.puts "Install #{app}"
    resp = Recipe.install %{app: app}
    {:reply, resp, state}
  end

end
