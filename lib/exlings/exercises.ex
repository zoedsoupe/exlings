defmodule Exlings.Exercises do
  @moduledoc """
  Single source of truth for all exercises.
  """

  alias Exlings.Exercises.Exercise

  # All exercises defined here
  @exercises [
    # Section 1: First Steps (001-010) - Just compile
    %Exercise{
      number: 1,
      name: "Hello World",
      file: "001_hello_world.ex",
      topic: "basics",
      hint: "Use IO.puts/1 to print 'Hello, World!'",
      expected_output: "Hello, World!\n"
    },
    %Exercise{
      number: 2,
      name: "Variables",
      file: "002_variables.ex",
      topic: "basics",
      hint: "Variables in Elixir are bound with =. Remember they're immutable!",
      expected_output: "The answer is: 42\n"
    },
    %Exercise{
      number: 3,
      name: "Basic Types",
      file: "003_types.ex",
      topic: "basics",
      hint: "Atoms start with :, strings are in double quotes",
      expected_output: "atom: :hello, string: world, number: 42\n"
    },
    %Exercise{
      number: 4,
      name: "Pattern Matching",
      file: "004_pattern_matching.ex",
      topic: "basics",
      hint: "= is not assignment, it's pattern matching!",
      expected_output: "x = 5, y = 10\n"
    },
    %Exercise{
      number: 5,
      name: "Lists",
      file: "005_lists.ex",
      topic: "basics",
      hint: "Use [head | tail] syntax to destructure lists",
      expected_output: "First: 1, Rest: [2, 3, 4]\n"
    },
    %Exercise{
      number: 6,
      name: "Tuples",
      file: "006_tuples.ex",
      topic: "basics",
      hint: "Tuples are commonly used for return values like {:ok, result}",
      expected_output: "Status: ok, Value: 42\n"
    },
    %Exercise{
      number: 7,
      name: "Functions",
      file: "007_functions.ex",
      topic: "basics",
      hint: "Define functions with def. Don't forget to use the function!",
      expected_output: "Sum: 15\n"
    },
    %Exercise{
      number: 8,
      name: "Pipe Operator",
      file: "008_pipe.ex",
      topic: "basics",
      hint: "The |> operator pipes the result of one function into the next",
      expected_output: "HELLO\n"
    },
    %Exercise{
      number: 9,
      name: "Pattern Matching Functions",
      file: "009_function_patterns.ex",
      topic: "functions",
      hint: "Functions can have multiple clauses that pattern match",
      expected_output: "ok\nerror\n"
    },
    %Exercise{
      number: 10,
      name: "Guards",
      file: "010_guards.ex",
      topic: "functions",
      hint: "Use 'when' to add guards to function clauses",
      expected_output: "positive\nnegative\nzero\n"
    }
  ]

  @doc "Get all exercises"
  def all, do: @exercises

  @doc "Get a specific exercise by number"
  def get(number) when is_integer(number) do
    Enum.find(@exercises, &(&1.number == number))
  end

  @doc "Get total exercise count"
  def count, do: length(@exercises)

  @doc "Get exercises by topic"
  def by_topic(topic) do
    Enum.filter(@exercises, &(&1.topic == topic))
  end
end
