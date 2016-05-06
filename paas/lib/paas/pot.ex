defmodule Paas.Pot do
  @module """
  """

  def create(app) do
    %{app: app, commands: []}
  end

  def addCommands(pot, commands) do
    Map.update! pot, :commands, &(&1 ++ commands)
  end
end
