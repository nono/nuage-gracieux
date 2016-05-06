defmodule Paas.Chef do
  @moduledoc """
  Give it some orders and it will take care of them.
  It can install an application for example.
  """

  use GenServer

  # Client

  def start_link do
    GenServer.start_link(__MODULE__, :ok, name: :chef)
  end

  def install(app) do
    GenServer.call :chef, {:install, app}
  end

  # Server callbacks

  def handle_call({:install, app}, _from, state) do
    IO.puts "Install #{app}"
    resp = Paas.Recipe.install %{app: app}
    {:reply, resp, state}
  end

end
