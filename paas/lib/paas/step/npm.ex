defmodule Paas.Step.Npm do
  @moduledoc """
  Handle the npm commands
  """

  alias Paas.Pot

  def installDependencies(pot) do
    pot
    |> Pot.addCommands([
      ["npm", "install"]
    ])
  end
end
