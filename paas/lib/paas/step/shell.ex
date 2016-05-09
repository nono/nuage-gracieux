defmodule Paas.Step.Shell do
  @defmodule """
  Execute commands in the shell
  """

  alias Paas.Step.Workspace

  def execute(pot) do
    executeCommands(pot.commands, Workspace.baseDir)
    pot = %{pot | :commands => []}
  end

  defp executeCommands([], cwd), do: []
  defp executeCommands([cmd|rest], cwd) do
    IO.puts Enum.join cmd, " "
    cwd = executeCommand(cmd, cwd)
    executeCommands(rest, cwd)
  end

  defp executeCommand(["cd", dir], cwd) do
    Path.absname dir, cwd
  end
  defp executeCommand([prog|args], cwd) do
    logFile = Path.join Workspace.baseDir, "install.log"
    options = [err: :out, dir: cwd]
    Porcelain.exec(prog, args, options)
    |> IO.inspect
    cwd
  end
end
