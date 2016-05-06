defmodule Paas.Pot do
  @moduledoc """
  Put all the ingredients in the pot
  """

  def create(app) do
    %{app: app, commands: []}
  end

  def addCommands(pot, commands) do
    Map.update! pot, :commands, &(&1 ++ commands)
  end
end
