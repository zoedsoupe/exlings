defmodule Mix.Tasks.Exlings.Lang do
  use Mix.Task

  @shortdoc "Change the UI language"

  @moduledoc """
  Change the language used by Exlings (exercise files, hints and messages).

  ## Usage

      mix exlings.lang

  Progress is kept; only the language line in .progress changes.
  """

  alias Exlings.{I18n, Progress}

  def run(_args) do
    "\nChoose your language / Escolha seu idioma:\n  1. English\n  2. Português (Brasil)\n> "
    |> IO.gets()
    |> maybe_set_language()
  end

  defp maybe_set_language(:eof), do: :ok
  defp maybe_set_language({:error, _}), do: :ok

  defp maybe_set_language(choice) do
    lang = if String.trim(choice) == "2", do: "pt-BR", else: "en"
    Progress.set_language(lang)
    Mix.shell().info(I18n.t(I18n.parse_locale(lang), :language_set))
  end
end
