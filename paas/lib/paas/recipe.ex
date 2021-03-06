defmodule Paas.Recipe do
  @moduledoc """
  Give the list of steps to follow for an order
  """

  alias Paas.Pot
  alias Paas.Step.Git
  alias Paas.Step.Npm
  alias Paas.Step.Shell
  alias Paas.Step.Workspace

  def install(%{app: app}) do
    app
    |> Pot.create
    |> Workspace.createDirectory
    |> Git.cloneRepository
    |> Npm.installDependencies
    # |> IO.inspect
    |> Shell.execute
  end
end
