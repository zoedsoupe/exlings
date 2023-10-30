defmodule Exlings.Application do
  @moduledoc """
  Main application entrypoint to parse args
  and handle commands.
  """

  use Application

  alias Burrito.Util.Args

  @impl true
  def start(_, _) do
    IO.puts("FUNCIONANDO")
    args = Args.get_arguments()
    IO.puts(args)

    Exlings.CLI.parse(args)

    System.halt(0)
  end
end
