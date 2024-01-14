defmodule Exlings.CLI do
  @moduledoc """
  Main module to deifne the CLI command and how to run it
  """

  use Nexus

  @impl true
  def version, do: "0.1.0"

  Nexus.help()

  defcommand(:list, required: true, doc: "List all exercices while checking your progress")
  defcommand(:verify, required: true, doc: "Compile and run all the exercises")
  defcommand(:hint, type: :string, required: true, doc: "Give a hint to a given exercise")

  defcommand :run, type: :null, doc: "" do
    defcommand(:next, type: :string, required: true, doc: "")
  end

  @impl true
  def handle_input(:list) do
    raise "UNIMPLEMENTED"
  end

  def handle_input(:verify) do
    raise "UNIMPLEMENTED"
  end

  def handle_input(:hint, %{value: _}) do
    raise "UNIMPLEMENTED"
  end

  def handle_input(:run, %{value: _, subcommand: :next}) do
    raise "UNIMPLEMENTED"
  end

  Nexus.parse()
end