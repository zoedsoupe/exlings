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
end
