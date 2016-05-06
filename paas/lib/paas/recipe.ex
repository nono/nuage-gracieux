defmodule Paas.Recipe do
  @moduledoc """
  Give the list of steps to follow for an order
  """

  alias Paas.Pot
  alias Paas.Step.Git
  alias Paas.Step.Npm
  alias Paas.Step.Workspace

  def install(%{app: app}) do
    Pot.create(app)
    |> Workspace.createDirectory
    |> Git.cloneRepository
    |> Npm.installDependencies
    # |> Command.execute
  end
end
