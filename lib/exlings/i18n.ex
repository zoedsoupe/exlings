defmodule Exlings.I18n do
  @moduledoc """
  Locales and user-facing strings.

  English is canonical. Other locales fall back to English per key,
  so a partial translation never breaks the UI.
  """

  @locales %{en: "English", pt_br: "Português (Brasil)"}

  @doc "Available locales as %{atom => display name}."
  def locales, do: @locales

  @doc "Parse the string stored in .progress into a locale atom."
  def parse_locale("pt-BR"), do: :pt_br
  def parse_locale("pt_br"), do: :pt_br
  def parse_locale(_), do: :en

  @doc "Subdirectory of exercises/ holding this locale's files. Empty for English."
  def locale_dir(:pt_br), do: "pt-BR"
  def locale_dir(_), do: ""

  @strings %{
    en: %{
      header: "Exlings - Learn Elixir by fixing broken code",
      exercise_header: "Exercise %{number}/%{total}: %{name}",
      success: "Exercise %{number} complete!",
      output_label: "Output:",
      progress: "Progress: [%{completed}/%{total}] %{percentage}%",
      compilation_failed: "Compilation failed:",
      runtime_error: "Runtime error:",
      tests_failed: "Tests failed:",
      timeout: "Timed out after %{seconds}s.\nCheck for infinite loops or recursion.",
      output_mismatch: "Output doesn't match!",
      expected_label: "Expected:",
      got_label: "But got:",
      skipping: "Skipping exercise %{number}: %{name}",
      skip_reason: "Exercise %{number} is currently skipped",
      all_complete: "Congratulations!\nYou've completed all Exlings exercises!",
      hint_label: "Hint %{index}/%{total}:",
      stuck: "Stuck? Run 'mix exlings.hint' for another hint.",
      edit_and_rerun: "Edit %{path} and run 'mix exlings' again.",
      placeholder_one: "You still have a ??? placeholder to fill at line %{line}.",
      placeholder_many: "You still have ??? placeholders to fill at lines %{lines}.",
      invalid_number: "Error: Invalid exercise number: %{input}",
      too_many_args: "Error: Too many arguments",
      usage_exlings: "Usage: mix exlings [number]",
      usage_hint: "Usage: mix exlings.hint [number]",
      no_exercise: "Error: No exercise %{number}",
      list_header: "Exlings Exercises:",
      list_progress: "Progress: %{completed}/%{total} (%{percentage}%)",
      watch_invalid: "Error: Invalid or completed exercise",
      watching: "Watching %{path} - edit and save to re-run. Ctrl+C to quit.",
      reset_done: "Progress reset! Run 'mix exlings' to start from the beginning.",
      reset_error: "Error resetting progress: %{reason}",
      topic_basics: "basics",
      topic_data_structures: "data structures",
      topic_pattern_matching: "pattern matching",
      topic_functions: "functions",
      topic_control_flow: "control flow",
      topic_enum: "enum",
      topic_recursion: "recursion",
      topic_comprehensions: "comprehensions",
      topic_strings: "strings",
      topic_ranges: "ranges",
      topic_streams: "streams"
    },
    pt_br: %{
      header: "Exlings - Aprenda Elixir consertando código quebrado",
      exercise_header: "Exercício %{number}/%{total}: %{name}",
      success: "Exercício %{number} completo!",
      output_label: "Saída:",
      progress: "Progresso: [%{completed}/%{total}] %{percentage}%",
      compilation_failed: "Falha na compilação:",
      runtime_error: "Erro em tempo de execução:",
      tests_failed: "Testes falharam:",
      timeout: "Tempo esgotado após %{seconds}s.\nVerifique loops infinitos ou recursão.",
      output_mismatch: "A saída não confere!",
      expected_label: "Esperado:",
      got_label: "Mas recebeu:",
      skipping: "Pulando exercício %{number}: %{name}",
      skip_reason: "O exercício %{number} está marcado para ser pulado",
      all_complete: "Parabéns!\nVocê completou todos os exercícios do Exlings!",
      hint_label: "Dica %{index}/%{total}:",
      stuck: "Travou? Rode 'mix exlings.hint' para outra dica.",
      edit_and_rerun: "Edite %{path} e rode 'mix exlings' novamente.",
      placeholder_one: "Você ainda tem um placeholder ??? para preencher na linha %{line}.",
      placeholder_many: "Você ainda tem placeholders ??? para preencher nas linhas %{lines}.",
      invalid_number: "Erro: número de exercício inválido: %{input}",
      too_many_args: "Erro: argumentos demais",
      usage_exlings: "Uso: mix exlings [número]",
      usage_hint: "Uso: mix exlings.hint [número]",
      no_exercise: "Erro: exercício %{number} não existe",
      list_header: "Exercícios do Exlings:",
      list_progress: "Progresso: %{completed}/%{total} (%{percentage}%)",
      watch_invalid: "Erro: exercício inválido ou já completado",
      watching: "Observando %{path} - edite e salve para rodar de novo. Ctrl+C para sair.",
      reset_done: "Progresso zerado! Rode 'mix exlings' para começar do início.",
      reset_error: "Erro ao zerar o progresso: %{reason}",
      topic_basics: "básico",
      topic_data_structures: "estruturas de dados",
      topic_pattern_matching: "pattern matching",
      topic_functions: "funções",
      topic_control_flow: "controle de fluxo",
      topic_enum: "enum",
      topic_recursion: "recursão",
      topic_comprehensions: "comprehensions",
      topic_strings: "strings",
      topic_ranges: "ranges",
      topic_streams: "streams"
    }
  }

  @doc """
  Translate `key` into `locale`, interpolating `bindings` into %{name} slots.
  Falls back to English when the key is missing in the locale.
  """
  def t(locale, key, bindings \\ []) do
    template = get_in(@strings, [locale, key]) || @strings.en[key]

    Enum.reduce(bindings, template, fn {name, value}, acc ->
      String.replace(acc, "%{" <> to_string(name) <> "}", to_string(value))
    end)
  end
end
