defmodule Mix.Tasks.Exlings.Reset do
  use Mix.Task

  @shortdoc "Reset exercise progress"

  @moduledoc """
  Reset your Exlings progress to start from the beginning.

  ## Usage

      mix exlings.reset

  This will delete the .progress file.
  """

  alias Exlings.{I18n, Progress}

  def run(_args) do
    case Progress.reset() do
      :ok ->
        Mix.shell().info("\n" <> I18n.t(Exlings.locale(), :reset_done) <> "\n")

      {:error, reason} ->
        Mix.shell().error(
          "\n" <> I18n.t(Exlings.locale(), :reset_error, reason: inspect(reason)) <> "\n"
        )

        System.halt(1)
    end
  end
end
