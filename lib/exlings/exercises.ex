defmodule Exlings.Exercises do
  @moduledoc """
  Single source of truth for all exercises.
  """

  alias Exlings.Exercises.Exercise

  # Hints follow PRIMM: the first hint asks the learner to predict or
  # investigate (often in IEx), later hints get closer to the answer.
  # Never state the solution outright in the first hint.

  # All exercises defined here
  @exercises [
    # Level 0: First Contact (001-003)
    %Exercise{
      number: 1,
      name: "Hello World",
      file: "001_hello_world.ex",
      topic: "basics",
      hints: [
        "Predict: what does IO.puts() print when it gets no argument? Try it in IEx before running.",
        "IO.puts/1 takes one argument, the string to print. Which string does the task ask for?"
      ],
      expected_output: "Hello, World!\n"
    },
    %Exercise{
      number: 2,
      name: "Comments",
      file: "002_comments.ex",
      topic: "basics",
      hints: [
        "Run the file and look at the output. Which printed line needs to change, and which line should Elixir ignore?",
        "A comment starts with #. The string inside IO.puts must say 'Comments are awesome!'."
      ],
      expected_output: "Comments are awesome!\n"
    },
    %Exercise{
      number: 3,
      name: "Variables",
      file: "003_variables.ex",
      topic: "basics",
      hints: [
        "Try answer = 42 in IEx, then type answer. What does = do to a variable?",
        "Replace ??? with the number 42."
      ],
      expected_output: "The answer is: 42\n"
    },

    # Level 1: Basic Values (004-008)
    %Exercise{
      number: 4,
      name: "Basic Math",
      file: "004_basic_math.ex",
      topic: "basics",
      hints: [
        "Predict the values of 10 + 5, 20 - 8 and 6 * 7 before running anything.",
        "The missing operators are +, - and *. Match each one to the result the printout expects."
      ],
      expected_output: "Sum: 15\nDifference: 12\nProduct: 42\n"
    },
    %Exercise{
      number: 5,
      name: "Strings",
      file: "005_strings.ex",
      topic: "basics",
      hints: [
        "Try \"Hello, \" <> \"world\" in IEx. What does the <> operator do?",
        "name needs quotes around it (it is a string), and the greeting parts are joined with <>."
      ],
      # Variable output based on user's name
      expected_output: nil
    },
    %Exercise{
      number: 6,
      name: "Atoms",
      file: "006_atoms.ex",
      topic: "basics",
      hints: [
        "Type :ok in IEx, then inspect it. What do :ok and :success have in common?",
        "An atom starts with : followed by its name, like :ok or :success."
      ],
      expected_output: "Status: :ok\nType: :success\n"
    },
    %Exercise{
      number: 7,
      name: "Booleans",
      file: "007_booleans.ex",
      topic: "basics",
      hints: [
        "Predict the value of true and not false before running the file.",
        "Use true for the statement about Elixir being fun and false for the flat Earth one."
      ],
      expected_output: "Elixir is fun: true\nEarth is flat: false\nResult: true\n"
    },
    %Exercise{
      number: 8,
      name: "Numbers and Types",
      file: "008_numbers.ex",
      topic: "basics",
      hints: [
        "In IEx, compare is_integer(42) with is_integer(42.0). What makes the two values different?",
        "An integer has no decimal point. A float must have one, like 3.14."
      ],
      # Variable output based on user's numbers
      expected_output: nil
    },

    # Level 2: Data Structures (009-012)
    %Exercise{
      number: 9,
      name: "Tuples",
      file: "009_tuples.ex",
      topic: "data_structures",
      hints: [
        "Try {1, 2} and then {:ok, 42} in IEx. Which brackets build a tuple?",
        "The tuples are {:ok, 42} and {100, 200}."
      ],
      expected_output: "Status: {:ok, 42}\nCoordinates: {100, 200}\n"
    },
    %Exercise{
      number: 10,
      name: "Lists",
      file: "010_lists.ex",
      topic: "data_structures",
      hints: [
        "In IEx, check is_list([1, 2, 3]) and is_list({1, 2, 3}). Which brackets make a list?",
        "The lists are [1, 2, 3] and [\"red\", \"green\", \"blue\"]."
      ],
      expected_output: "Numbers: [1, 2, 3]\nColors: [\"red\", \"green\", \"blue\"]\n"
    },
    %Exercise{
      number: 11,
      name: "Pattern Matching",
      file: "011_pattern_matching.ex",
      topic: "data_structures",
      hints: [
        "Predict: in IEx, what happens when you run {x, y} = {5, 10} and then type x?",
        "The right side of = must have the same shape as the pattern: the tuple {5, 10}."
      ],
      expected_output: "x = 5, y = 10\n"
    },
    %Exercise{
      number: 12,
      name: "List Patterns",
      file: "012_list_patterns.ex",
      topic: "data_structures",
      hints: [
        "In IEx, run [head | tail] = [1, 2, 3] and inspect both variables. What does | split?",
        "The right side needs the full list [1, 2, 3, 4]."
      ],
      expected_output: "First: 1\nRest: [2, 3, 4]\n"
    },

    # Level 3: Advanced Patterns (013-015)
    %Exercise{
      number: 13,
      name: "Underscore Pattern",
      file: "013_underscore_pattern.ex",
      topic: "pattern_matching",
      hints: [
        "Try matching {a, b} = {:error, \"oops\"} in IEx without using b. What warning do you get?",
        "Replace ??? with _ to tell Elixir you intentionally ignore that value."
      ],
      expected_output: "Status: error\n"
    },
    %Exercise{
      number: 14,
      name: "Pin Operator",
      file: "014_pin_operator.ex",
      topic: "pattern_matching",
      hints: [
        "Predict: after expected = :ok, what is the difference between {^expected, v} = {:ok, 100} and {expected, v} = {:ok, 100}? Try both in IEx.",
        "Pin the variable: ^expected_status matches against its current value instead of rebinding it."
      ],
      expected_output: "Status matched! Value: 100\n"
    },
    %Exercise{
      number: 15,
      name: "Nested Patterns",
      file: "015_nested_patterns.ex",
      topic: "pattern_matching",
      hints: [
        "The value is {:point, {10, 20}}. Sketch a pattern with the exact same shape, putting variables where the numbers are.",
        "The inner tuple needs its own pattern too: {:point, {x, y}}."
      ],
      expected_output: "x = 10, y = 20\n"
    },

    # Level 4: Functions (016-020)
    %Exercise{
      number: 16,
      name: "Functions",
      file: "016_functions.ex",
      topic: "functions",
      hints: [
        "A function body returns its last expression. What expression computes the product of a and b?",
        "The body should be a * b."
      ],
      expected_output: "6 * 7 = 42\n"
    },
    %Exercise{
      number: 17,
      name: "Multiple Function Clauses",
      file: "017_multiple_clauses.ex",
      topic: "functions",
      hints: [
        "Run the file and read the FunctionClauseError. Which of the two calls has no matching clause?",
        "Mirror the existing clause: match {:error, reason} and interpolate reason into the string, like the {:ok, value} clause does.",
        "def handle_result({:error, reason}), do: \"Error: \#{reason}\""
      ],
      expected_output: "Success: 42\nError: failed\n"
    },
    %Exercise{
      number: 18,
      name: "Guards",
      file: "018_guards.ex",
      topic: "functions",
      hints: [
        "A guard with when restricts when a clause matches. Which clause should only match numbers above zero?",
        "The guards are when n > 0 and when n < 0. The zero case needs no guard at all. Why?"
      ],
      expected_output: "positive\nnegative\nzero\n"
    },
    %Exercise{
      number: 19,
      name: "Anonymous Functions",
      file: "019_anonymous_functions.ex",
      topic: "functions",
      hints: [
        "Predict what (fn n -> n * 2 end).(21) returns. Note the dot before the arguments.",
        "double should be fn n -> n * 2 end."
      ],
      expected_output: "Double of 21 is: 42\n"
    },
    %Exercise{
      number: 20,
      name: "Capture Syntax",
      file: "020_capture_syntax.ex",
      topic: "functions",
      hints: [
        "Capture syntax &(...) turns an expression into a function. What does &1 stand for inside it?",
        "add_ten = &(&1 + 10)"
      ],
      expected_output: "32 + 10 = 42\n"
    },

    # Level 5: Control Flow (021-024)
    %Exercise{
      number: 21,
      name: "Case Expressions",
      file: "021_case.ex",
      topic: "control_flow",
      hints: [
        "Look at {:ok, value}: which part varies between calls? That part should be a variable in the pattern.",
        "The patterns are {:ok, value} and {:error, reason}."
      ],
      expected_output: "Success: data loaded\nError: connection failed\n"
    },
    %Exercise{
      number: 22,
      name: "Cond Expressions",
      file: "022_cond.ex",
      topic: "control_flow",
      hints: [
        "cond picks the first truthy condition. Why does the last clause use true?",
        "Return the strings \"child\", \"teenager\", \"adult\" and \"senior\" for each branch."
      ],
      expected_output: "child\nteenager\nadult\nsenior\n"
    },
    %Exercise{
      number: 23,
      name: "If and Unless",
      file: "023_if_unless.ex",
      topic: "control_flow",
      hints: [
        "Predict: unless n >= 0 runs its block when the condition is what? Compare with if.",
        "The conditions are if n > 0 and unless n >= 0."
      ],
      expected_output: "positive\nnot positive\nWarning: negative number!\nok\n"
    },
    %Exercise{
      number: 24,
      name: "Pipe Operator",
      file: "024_pipe.ex",
      topic: "control_flow",
      hints: [
        "In a pipe, the previous result becomes the first argument of the next call. Which String function uppercases a string?",
        "Put String.upcase() in the empty pipe step."
      ],
      expected_output: "ELIXIR IS AMAZING\n"
    },

    # Level 6: Advanced Data Structures (025-027)
    %Exercise{
      number: 25,
      name: "Maps",
      file: "025_maps.ex",
      topic: "data_structures",
      hints: [
        "Try %{} in IEx, then %{name: \"Bob\"}. How do you read a key back out?",
        "The map is %{name: \"Bob\", age: 25}."
      ],
      expected_output: "Name: Bob, Age: 25\n"
    },
    %Exercise{
      number: 26,
      name: "Keyword Lists",
      file: "026_keyword_lists.ex",
      topic: "data_structures",
      hints: [
        "Inspect [host: \"localhost\"] in IEx. What data structure is a keyword list shorthand for?",
        "The keyword list is [host: \"localhost\", port: 5432, database: \"myapp\"]."
      ],
      expected_output: "Connecting to localhost:5432\n"
    },
    %Exercise{
      number: 27,
      name: "Structs",
      file: "027_structs.ex",
      topic: "data_structures",
      hints: [
        "Re-read the note about scripts in the comments. Why can %Point{} only be built from inside the Point module here?",
        "defstruct takes a keyword list of fields and their defaults. What would defstruct x: 0, y: 0 give you?",
        "new/2 should return %Point{x: x, y: y}, and the call site is Point.new(10, 20)."
      ],
      expected_output: "Point coordinates: x=10, y=20\n"
    },

    # Level 7: Enum Module (028-035)
    %Exercise{
      number: 28,
      name: "Enum.map",
      file: "028_enum_map.ex",
      topic: "enum",
      hints: [
        "Enum.map applies a function to every element. What function turns 1 into 2, 2 into 4?",
        "Use fn n -> n * 2 end for the numbers. For the words, which String function upcases? Capture syntax works too: &String.upcase/1."
      ],
      expected_output: "Doubled: [2, 4, 6, 8]\nShouted: [\"ELIXIR\", \"IS\", \"FUN\"]\n"
    },
    %Exercise{
      number: 29,
      name: "Enum.filter",
      file: "029_enum_filter.ex",
      topic: "enum",
      hints: [
        "Enum.filter keeps elements where the function returns a truthy value. How do you test that a number is even? Try rem/2 in IEx.",
        "Use fn n -> rem(n, 2) == 0 end and fn w -> String.length(w) > 3 end."
      ],
      expected_output: "Evens: [2, 4, 6, 8]\nLong words: [\"elixir\", \"erlang\"]\n"
    },
    %Exercise{
      number: 30,
      name: "Enum.reduce",
      file: "030_enum_reduce.ex",
      topic: "enum",
      hints: [
        "Enum.reduce threads an accumulator through fn element, acc -> new_acc end. For a sum, what should the new accumulator be?",
        "Use fn n, acc -> n + acc end for the sum. For the product, what single operator changes?",
        "Sum: fn n, acc -> n + acc end with initial 0. Product: fn n, acc -> n * acc end with initial 1. Why does the product start at 1?"
      ],
      expected_output: "Sum: 15\nProduct: 120\n"
    },
    %Exercise{
      number: 31,
      name: "Enum.each",
      file: "031_enum_each.ex",
      topic: "enum",
      hints: [
        "Enum.each is like Enum.map but for side effects: it returns :ok. What should happen for each element?",
        "Use fn color -> IO.puts(\"Color: \#{color}\") end."
      ],
      expected_output: "Color: red\nColor: green\nColor: blue\n"
    },
    %Exercise{
      number: 32,
      name: "Enum.find",
      file: "032_enum_find.ex",
      topic: "enum",
      hints: [
        "Enum.find returns the first match, or nil when nothing matches. Which expected line shows the nil case?",
        "Use fn n -> n > 10 end and fn n -> n > 100 end."
      ],
      expected_output: "Found: 12\nMissing: nil\n"
    },
    %Exercise{
      number: 33,
      name: "Enum.all? and Enum.any?",
      file: "033_enum_all_any.ex",
      topic: "enum",
      hints: [
        "all? asks 'does every element satisfy this?', any? asks 'does at least one?'. Which fits each question in the comments?",
        "Use fn n -> n > 0 end for all? and fn n -> n < 0 end for any?."
      ],
      expected_output: "All positive? true\nAny negative? false\n"
    },
    %Exercise{
      number: 34,
      name: "Enum.sort",
      file: "034_enum_sort.ex",
      topic: "enum",
      hints: [
        "Enum.sort/2 takes a sorter function that returns true when the first element belongs before the second. For descending order, when does a belong before b?",
        "Use fn a, b -> a >= b end, or the :desc shortcut."
      ],
      expected_output: "Ascending: [1, 2, 3, 5, 8]\nDescending: [8, 5, 3, 2, 1]\n"
    },
    %Exercise{
      number: 35,
      name: "Enum.group_by",
      file: "035_enum_group_by.ex",
      topic: "enum",
      hints: [
        "Enum.group_by buckets elements under the key your function returns. What should the function return for an even number? For an odd one?",
        "Use fn n -> if rem(n, 2) == 0, do: :even, else: :odd end."
      ],
      expected_output: "Even: [2, 4, 6]\nOdd: [1, 3, 5]\n"
    },

    # Level 8: Recursion (036-040)
    %Exercise{
      number: 36,
      name: "Basic Recursion",
      file: "036_basic_recursion.ex",
      topic: "recursion",
      hints: [
        "Predict: what happens if countdown(n) calls countdown(n) with the same n forever? Why does the argument need to shrink on every call?",
        "Each call should move one step closer to the base case 0. Which expression is one less than n?"
      ],
      expected_output: "3\n2\n1\nBlast off!\n"
    },
    %Exercise{
      number: 37,
      name: "List Recursion",
      file: "037_list_recursion.ex",
      topic: "recursion",
      hints: [
        "Try [head | tail] = [1, 2, 3] in IEx. What is tail, and what is left after recursing on it a few times?",
        "The sum of an empty list is 0. The recursive case adds head to the sum of tail."
      ],
      expected_output: "Sum: 15\n"
    },
    %Exercise{
      number: 38,
      name: "Multiple Base Cases",
      file: "038_multiple_base_cases.ex",
      topic: "recursion",
      hints: [
        "Compute fib(2) by hand using fib(n) = fib(n - 1) + fib(n - 2). Which two values must already be known for that to work?",
        "The base cases are the first two Fibonacci numbers: fib(0) is 0 and fib(1) is 1."
      ],
      expected_output: "fib(10) = 55\n"
    },
    %Exercise{
      number: 39,
      name: "Accumulator Pattern",
      file: "039_accumulator_pattern.ex",
      topic: "recursion",
      hints: [
        "Compare with exercise 037: there the sum was built while returning from the calls. Here acc carries the running total INTO the next call. What should the new acc be once head is seen?",
        "The new accumulator combines the old acc with head using +. The recursive call keeps the shape do_sum(tail, new_acc).",
        "The full call is do_sum(tail, acc + head). Why is returning acc the right move in the base case?"
      ],
      expected_output: "Sum: 15\n"
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
