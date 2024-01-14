defmodule Exlings.Application do
  @moduledoc """
  Main application entrypoint to parse args
  and handle commands.
  """

  use Application

  # alias Burrito.Util.Args
  alias Exlings.CLI.UI

  @impl true
  def start(_, _) do
    args = System.argv()
    # args = Args.get_arguments()
    Exlings.CLI.run(args)
    System.halt(0)
  rescue
    ex ->
      args = System.argv() |> inspect(pretty: true)
      err = Exception.format(:error, ex, __STACKTRACE__)
      UI.write(:red, "An error occured on trying to run exlings with #{args} args")
      UI.write(:red, "Raw error:")
      UI.write(:red, err)
      System.halt(1)
  end
end
