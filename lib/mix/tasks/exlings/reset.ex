defmodule Mix.Tasks.Exlings.Reset do
  use Mix.Task

  @shortdoc "Reset exercise progress"

  @moduledoc """
  Reset your Exlings progress to start from the beginning.

  ## Usage

      mix exlings.reset

  This will delete the .progress file.
  """

  alias Exlings.Progress

  def run(_args) do
    case Progress.reset() do
      :ok ->
        IO.puts("\nProgress reset! Run 'mix exlings' to start from the beginning.\n")

      {:error, reason} ->
        IO.puts("\nError resetting progress: #{inspect(reason)}\n")
        System.halt(1)
    end
  end
end
