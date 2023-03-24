defmodule Exlings do
  @moduledoc """
  Main application entrypoint to parse args
  and handle commands.
  """

  use Application

  @impl true
  def start(_, _) do
    IO.puts("FUNCIONANDO")
    args = Burrito.Util.Args.get_arguments()
    IO.inspect(args, label: "ARGS")

    System.halt(0)
  end
end
