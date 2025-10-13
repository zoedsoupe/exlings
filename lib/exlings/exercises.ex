defmodule Exlings.Exercises do
  @moduledoc """
  Single source of truth for all exercises.
  """

  alias Exlings.Exercises.Exercise

  # All exercises defined here
  @exercises [
    # Level 0: First Contact (001-003)
    %Exercise{
      number: 1,
      name: "Hello World",
      file: "001_hello_world.ex",
      topic: "basics",
      hint: "Use IO.puts/1 with a string argument to print 'Hello, World!'",
      expected_output: "Hello, World!\n"
    },
    %Exercise{
      number: 2,
      name: "Comments",
      file: "002_comments.ex",
      topic: "basics",
      hint: "Add a comment with # and make the string say 'Comments are awesome!'",
      expected_output: "Comments are awesome!\n"
    },
    %Exercise{
      number: 3,
      name: "Variables",
      file: "003_variables.ex",
      topic: "basics",
      hint: "Variables are bound with =. Replace ??? with the number 42",
      expected_output: "The answer is: 42\n"
    },

    # Level 1: Basic Values (004-008)
    %Exercise{
      number: 4,
      name: "Basic Math",
      file: "004_basic_math.ex",
      topic: "basics",
      hint: "Use +, -, and * operators for addition, subtraction, and multiplication",
      expected_output: "Sum: 15\nDifference: 12\nProduct: 42\n"
    },
    %Exercise{
      number: 5,
      name: "Strings",
      file: "005_strings.ex",
      topic: "basics",
      hint: "Use <> to concatenate strings. Don't forget quotes around your name!",
      # Variable output based on user's name
      expected_output: nil
    },
    %Exercise{
      number: 6,
      name: "Atoms",
      file: "006_atoms.ex",
      topic: "basics",
      hint: "Atoms start with : like :ok or :success",
      expected_output: "Status: :ok\nType: :success\n"
    },
    %Exercise{
      number: 7,
      name: "Booleans",
      file: "007_booleans.ex",
      topic: "basics",
      hint: "Use true and false. Remember: true and not false = true",
      expected_output: "Elixir is fun: true\nEarth is flat: false\nResult: true\n"
    },
    %Exercise{
      number: 8,
      name: "Numbers and Types",
      file: "008_numbers.ex",
      topic: "basics",
      hint: "Integers have no decimal point, floats must have a decimal point",
      # Variable output based on user's numbers
      expected_output: nil
    },

    # Level 2: Data Structures (009-012)
    %Exercise{
      number: 9,
      name: "Tuples",
      file: "009_tuples.ex",
      topic: "data_structures",
      hint: "Tuples use curly braces: {:ok, 42} or {100, 200}",
      expected_output: "Status: {:ok, 42}\nCoordinates: {100, 200}\n"
    },
    %Exercise{
      number: 10,
      name: "Lists",
      file: "010_lists.ex",
      topic: "data_structures",
      hint: "Lists use square brackets: [1, 2, 3] or [\"red\", \"green\", \"blue\"]",
      expected_output: "Numbers: [1, 2, 3]\nColors: [\"red\", \"green\", \"blue\"]\n"
    },
    %Exercise{
      number: 11,
      name: "Pattern Matching",
      file: "011_pattern_matching.ex",
      topic: "data_structures",
      hint: "Use {x, y} = {5, 10} to extract values from a tuple",
      expected_output: "x = 5, y = 10\n"
    },
    %Exercise{
      number: 12,
      name: "List Patterns",
      file: "012_list_patterns.ex",
      topic: "data_structures",
      hint: "Use [first | rest] = [1, 2, 3, 4] to split a list",
      expected_output: "First: 1\nRest: [2, 3, 4]\n"
    },

    # Level 3: Advanced Patterns (013-015)
    %Exercise{
      number: 13,
      name: "Underscore Pattern",
      file: "013_underscore_pattern.ex",
      topic: "pattern_matching",
      hint: "Use _ to ignore values you don't need in a pattern",
      expected_output: "Status: error\n"
    },
    %Exercise{
      number: 14,
      name: "Pin Operator",
      file: "014_pin_operator.ex",
      topic: "pattern_matching",
      hint: "Use ^expected_status to match against the current value of a variable",
      expected_output: "Status matched! Value: 100\n"
    },
    %Exercise{
      number: 15,
      name: "Nested Patterns",
      file: "015_nested_patterns.ex",
      topic: "pattern_matching",
      hint: "Use {:point, {x, y}} to match nested structures",
      expected_output: "x = 10, y = 20\n"
    },

    # Level 4: Functions (016-020)
    %Exercise{
      number: 16,
      name: "Functions",
      file: "016_functions.ex",
      topic: "functions",
      hint: "Return a * b from the multiply function",
      expected_output: "6 * 7 = 42\n"
    },
    %Exercise{
      number: 17,
      name: "Multiple Function Clauses",
      file: "017_multiple_clauses.ex",
      topic: "functions",
      hint: "Add: def handle_result({:error, reason}), do: \"Error: \#{reason}\"",
      expected_output: "Success: 42\nError: failed\n"
    },
    %Exercise{
      number: 18,
      name: "Guards",
      file: "018_guards.ex",
      topic: "functions",
      hint: "Use 'when n > 0' and 'when n < 0' for the guards",
      expected_output: "positive\nnegative\nzero\n"
    },
    %Exercise{
      number: 19,
      name: "Anonymous Functions",
      file: "019_anonymous_functions.ex",
      topic: "functions",
      hint: "Create: fn n -> n * 2 end",
      expected_output: "Double of 21 is: 42\n"
    },
    %Exercise{
      number: 20,
      name: "Capture Syntax",
      file: "020_capture_syntax.ex",
      topic: "functions",
      hint: "Use &(&1 + 10) for the capture syntax",
      expected_output: "32 + 10 = 42\n"
    },

    # Level 5: Control Flow (021-024)
    %Exercise{
      number: 21,
      name: "Case Expressions",
      file: "021_case.ex",
      topic: "control_flow",
      hint: "Pattern match on {:ok, value} and {:error, reason}",
      expected_output: "Success: data loaded\nError: connection failed\n"
    },
    %Exercise{
      number: 22,
      name: "Cond Expressions",
      file: "022_cond.ex",
      topic: "control_flow",
      hint: "Return \"child\", \"teenager\", \"adult\", and \"senior\" for each condition",
      expected_output: "child\nteenager\nadult\nsenior\n"
    },
    %Exercise{
      number: 23,
      name: "If and Unless",
      file: "023_if_unless.ex",
      topic: "control_flow",
      hint: "Use 'if n > 0' and 'unless n >= 0' for the conditions",
      expected_output: "positive\nnot positive\nWarning: negative number!\nok\n"
    },
    %Exercise{
      number: 24,
      name: "Pipe Operator",
      file: "024_pipe.ex",
      topic: "control_flow",
      hint: "Use String.upcase() in the pipe chain",
      expected_output: "ELIXIR IS AMAZING\n"
    },

    # Level 6: Advanced Data Structures (025-027)
    %Exercise{
      number: 25,
      name: "Maps",
      file: "025_maps.ex",
      topic: "data_structures",
      hint: "Create a map with %{name: \"Bob\", age: 25}",
      expected_output: "Name: Bob, Age: 25\n"
    },
    %Exercise{
      number: 26,
      name: "Keyword Lists",
      file: "026_keyword_lists.ex",
      topic: "data_structures",
      hint: "Create [host: \"localhost\", port: 5432, database: \"myapp\"]",
      expected_output: "Connecting to localhost:5432\n"
    },
    %Exercise{
      number: 27,
      name: "Structs",
      file: "027_structs.ex",
      topic: "data_structures",
      hint: "Use defstruct x: 0, y: 0 and create %Point{x: 10, y: 20}",
      expected_output: "Point coordinates: x=10, y=20\n"
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
