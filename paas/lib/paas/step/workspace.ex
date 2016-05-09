defmodule Paas.Step.Workspace do
  @moduledoc """
  A structure of directories for applications
  """

  alias Paas.Pot

  @base Path.expand "../../../../workspace", __DIR__

  def baseDir do
    @base
  end

  def createDirectory(pot) do
    pot
    |> Pot.addCommands([
      ["mkdir", "-p", @base],
      ["cd", @base],
    ])
  end
end
