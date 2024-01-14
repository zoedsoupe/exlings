defmodule Exlings.CLI do
  @moduledoc """
  Main module to deifne the CLI command and how to run it
  """

  use Nexus

  alias Exlings.Exercises

  @impl true
  def version, do: "0.1.0"

  Nexus.help()

  @run_help "Try to run a specified exercise, if not given, the pending one is run"
  defcommand(:run, type: :string, default: "next", doc: @run_help)

  @impl true
  def handle_input(:run, %{value: "next"}) do
    if e = Exercises.next_pending() do
      {_, out} = Exercises.run(e)
      IO.puts(out)
    else
      IO.puts("There's no pending exercise")
    end
  end

  def handle_input(:run, %{value: exercise}) do
    if e = Exercises.find_by(name: exercise) do
      {_, out} = Exercises.run(e)
      IO.puts(out)
    else
      IO.puts("Exercise #{exercise} not found!")
    end
  end

  Nexus.parse()
end
