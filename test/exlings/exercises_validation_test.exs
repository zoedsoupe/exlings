defmodule Exlings.ExercisesValidationTest do
  use ExUnit.Case, async: true

  alias Exlings.Exercises

  @exercises_dir "exercises"

  test "every registered exercise file exists on disk" do
    missing =
      Exercises.all()
      |> Enum.reject(&File.exists?(Path.join(@exercises_dir, &1.file)))
      |> Enum.map(& &1.file)

    assert missing == [], "exercise files missing: #{inspect(missing)}"
  end

  test "every file on disk is registered" do
    registered = MapSet.new(Exercises.all(), & &1.file)

    orphans =
      @exercises_dir
      |> File.ls!()
      |> Enum.filter(&String.match?(&1, ~r/\.exs?$/))
      |> Enum.reject(&MapSet.member?(registered, &1))

    assert orphans == [], "unregistered exercise files: #{inspect(orphans)}"
  end

  test "numbers are sequential starting at 1" do
    numbers = Enum.map(Exercises.all(), & &1.number)
    assert Enum.sort(numbers) == Enum.to_list(1..length(numbers))
  end

  test "filename prefix matches exercise number" do
    mismatched =
      Exercises.all()
      |> Enum.reject(fn e ->
        String.starts_with?(e.file, String.pad_leading("#{e.number}", 3, "0") <> "_")
      end)
      |> Enum.map(&"#{&1.number}: #{&1.file}")

    assert mismatched == [], "filename/number mismatch: #{inspect(mismatched)}"
  end

  test "exunit exercises have no expected_output (exit status is the check)" do
    invalid =
      Exercises.all()
      |> Enum.filter(&(&1.kind == :exunit and &1.expected_output != nil))
      |> Enum.map(& &1.file)

    assert invalid == [], "exunit exercises with expected_output: #{inspect(invalid)}"
  end

  test "localized exercise dirs mirror the canonical files" do
    canonical =
      @exercises_dir
      |> File.ls!()
      |> Enum.filter(&String.match?(&1, ~r/\.exs?$/))
      |> MapSet.new()

    for locale <- locale_dirs() do
      dir = Path.join(@exercises_dir, locale)

      localized =
        dir
        |> File.ls!()
        |> Enum.filter(&String.match?(&1, ~r/\.exs?$/))
        |> MapSet.new()

      assert localized == canonical,
             "#{dir}: file set differs from canonical (#{inspect(MapSet.symmetric_difference(localized, canonical) |> MapSet.to_list())})"

      for file <- canonical do
        assert normalized_ast(Path.join(dir, file)) ==
                 normalized_ast(Path.join(@exercises_dir, file)),
               "#{Path.join(dir, file)}: code differs from canonical, only comments may change"
      end
    end
  end

  test "pt-BR translations reference registered exercises with full hint lists" do
    alias Exlings.Exercises

    for {number, entry} <- Exercises.PtBr.entries() do
      exercise = Exercises.get(number)
      assert exercise, "pt-BR translation for unknown exercise #{number}"
      assert is_binary(entry.name), "exercise #{number}: missing pt-BR name"

      assert length(entry.hints) == length(exercise.hints),
             "exercise #{number}: pt-BR has #{length(entry.hints)} hints, English has #{length(exercise.hints)}"
    end
  end

  defp locale_dirs do
    @exercises_dir
    |> File.ls!()
    |> Enum.filter(&File.dir?(Path.join(@exercises_dir, &1)))
  end

  # Comments and formatting may differ between locales; the AST (with
  # line metadata stripped) must not. ??? placeholders are swapped for
  # parseable tokens first: an operator where ??? sits between operands
  # (10 ??? 5), an identifier everywhere else.
  defp normalized_ast(path) do
    {:ok, ast} =
      path
      |> File.read!()
      |> String.replace(~r/ \?\?\? (?!(?:do|end)\s)(?=[0-9a-zA-Z_"'\[({%:~])/, " + ")
      |> String.replace("???", "__placeholder__")
      |> Code.string_to_quoted()

    Macro.prewalk(ast, fn
      # call nodes: {name_or_remote, meta, args}
      {name, _meta, args} when is_list(args) -> {name, [], args}
      # variables: {name, meta, context}
      {name, _meta, context} when is_atom(name) and is_atom(context) -> {name, [], context}
      node -> node
    end)
  end
end
