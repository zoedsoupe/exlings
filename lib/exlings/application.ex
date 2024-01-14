defmodule Exlings.Application do
  @moduledoc """
  Main application entrypoint to parse args
  and handle commands.
  """

  use Application

  # alias Burrito.Util.Args

  @impl true
  def start(_, _) do
    args = System.argv()
    # args = Args.get_arguments()
    Exlings.CLI.run(args)
    System.halt(0)
  end
end
