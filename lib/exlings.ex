defmodule Exlings do
  @moduledoc """
  Main application entrypoint to parse args
  and handle commands.
  """

  use Application

  @impl true
  def start(_, _) do
    IO.puts("FUNCIONANDO")
  end
end
