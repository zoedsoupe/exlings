defmodule Exlings.Application do
  @moduledoc """
  Main application entrypoint to parse args
  and handle commands.
  """

  use Application

  alias Exlings.CLI.UI

  @impl true
  def start(_, _) do
    # Start a minimal supervisor
    children = []
    opts = [strategy: :one_for_one, name: Exlings.Supervisor]

    # Execute CLI in a separate task after supervisor starts
    Task.start(fn ->
      try do
        # Use Burrito.Util.Args for compiled binaries, fallback to System.argv() for dev
        args =
          if Code.ensure_loaded?(Burrito.Util.Args) do
            Burrito.Util.Args.get_arguments()
          else
            System.argv()
          end

        Exlings.CLI.execute(args)
        System.halt(0)
      rescue
        ex ->
          args_display =
            if(Code.ensure_loaded?(Burrito.Util.Args),
              do: Burrito.Util.Args.get_arguments(),
              else: System.argv()
            )
            |> inspect(pretty: true)

          err = Exception.format(:error, ex, __STACKTRACE__)
          UI.write(:red, "An error occured on trying to run exlings with #{args_display} args")
          UI.write(:red, "Raw error:")
          UI.write(:red, err)
          System.halt(1)
      end
    end)

    Supervisor.start_link(children, opts)
  end
end
