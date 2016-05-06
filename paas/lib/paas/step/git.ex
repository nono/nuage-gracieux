defmodule Paas.Step.Git do
  @moduledoc """
  Handle the git commands
  """

  alias Paas.Pot

  def cloneRepository(pot) do
    pot
    |> Pot.addCommands [
      ["git", "clone", "https://github.com/cozy/cozy-#{pot.app}", pot.app],
      ["cd", pot.app],
    ]
  end
end
