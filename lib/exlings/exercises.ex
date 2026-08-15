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
    },
    %Exercise{
      number: 40,
      name: "Tail Call Optimization",
      file: "040_tail_call_optimization.ex",
      topic: "recursion",
      hints: [
        "A call is in tail position when nothing happens after it returns. In 1 + count(tail), what is still waiting after the recursive call finishes?",
        "do_count takes the tail and an accumulator that is one bigger. Write that call as the last expression of the clause.",
        "The body is do_count(tail, acc + 1). Compare its memory use with the non-tail version in the comments."
      ],
      expected_output: "Count: 1000\n"
    },

    # Level 9: Comprehensions (041-043)
    %Exercise{
      number: 41,
      name: "Basic Comprehensions",
      file: "041_basic_comprehensions.ex",
      topic: "comprehensions",
      hints: [
        "Predict: what does for n <- [1, 2, 3], do: n * 10 return? Try it in IEx before editing the file.",
        "The expression after do: runs once per element. Which expression squares n?"
      ],
      expected_output: "Squares: [1, 4, 9, 16, 25]\n"
    },
    %Exercise{
      number: 42,
      name: "Comprehension Filters",
      file: "042_comprehension_filters.ex",
      topic: "comprehensions",
      hints: [
        "Read for n <- [1, 2, 3, 4], n > 2, do: n * 10 and predict the result. Which elements are skipped, and where does the condition sit?",
        "The filter goes between the generator and do:. rem(n, 2) == 0 is true exactly for even numbers."
      ],
      expected_output: "Even squares: [4, 16, 36, 64]\n"
    },
    %Exercise{
      number: 43,
      name: "Multiple Generators",
      file: "043_multiple_generators.ex",
      topic: "comprehensions",
      hints: [
        "Try for x <- [1, 2], y <- [:a, :b], do: {x, y} in IEx. How many pairs come out, and why that many?",
        "The second generator looks like the first one: y <- ys. Each x is then paired with every y."
      ],
      expected_output: "Pairs: [{1, :a}, {1, :b}, {2, :a}, {2, :b}, {3, :a}, {3, :b}]\n"
    },

    # Level 10: Strings and Binaries (044-047)
    %Exercise{
      number: 44,
      name: "String Module Functions",
      file: "044_string_module.ex",
      topic: "strings",
      hints: [
        "Try String.trim(\"  hi  \") and String.upcase(\"hi\") in IEx. What does each one return?",
        "The pipe feeds the trimmed string into the missing step. You want it loud before the split: String.upcase()."
      ],
      expected_output: "Words: [\"HELLO\", \"ELIXIR\", \"WORLD\"]\nCount: 3\n"
    },
    %Exercise{
      number: 45,
      name: "String Interpolation",
      file: "045_string_interpolation.ex",
      topic: "strings",
      hints: [
        "Try \"2 + 2 = \#{2 + 2}\" in IEx. What kinds of expressions are allowed inside \#{}?",
        "Interpolate String.upcase(name) for the product and price * quantity for the total."
      ],
      expected_output: "Product: ELIXIR\nTotal: $59.97\nIn stock? yes\n"
    },
    %Exercise{
      number: 46,
      name: "Binaries and Bitstrings",
      file: "046_binaries.ex",
      topic: "strings",
      hints: [
        "Try <<104, 101, 108, 108, 111>> in IEx and compare it with \"hello\". What does that tell you about strings?",
        "Match against greeting itself. The rest::binary segment collects every byte after the first two."
      ],
      expected_output: "First byte: 104\nSecond byte: 101\nRest: llo\n"
    },
    %Exercise{
      number: 47,
      name: "Charlists vs Strings",
      file: "047_charlists.ex",
      topic: "strings",
      hints: [
        "Try is_list(~c\"hi\") and is_binary(\"hi\") in IEx. Which text form is secretly a list?",
        "to_string/1 turns a charlist into a string, to_charlist/1 turns a string back into a charlist."
      ],
      expected_output: "String: hello\nLength: 5\nIs list? true\n"
    },

    # Level 11: Ranges and Streams (048-050)
    %Exercise{
      number: 48,
      name: "Ranges",
      file: "048_ranges.ex",
      topic: "ranges",
      hints: [
        "Try 1..5 in IEx, then Enum.to_list(1..5). Is a range the same thing as a list?",
        "The range literal is 1..5. Enum functions accept it directly, no conversion needed."
      ],
      expected_output: "Range: 1..5\nSum: 15\nSquares: [1, 4, 9, 16, 25]\n"
    },
    %Exercise{
      number: 49,
      name: "Stream Introduction",
      file: "049_stream_introduction.ex",
      topic: "streams",
      hints: [
        "Compare Enum.map(1..10, fn n -> n * 2 end) with Stream.map(1..10, fn n -> n * 2 end) in IEx. What does each one return?",
        "A stream does nothing until an Enum function consumes it. Enum.take(stream, 3) pulls just three values."
      ],
      expected_output: "First three: [2, 4, 6]\n"
    },
    %Exercise{
      number: 50,
      name: "Stream Composition",
      file: "050_stream_composition.ex",
      topic: "streams",
      hints: [
        "Predict: with Enum.map |> Enum.filter |> Enum.take(5), how many intermediate lists are built? What changes when the first two steps are Stream calls?",
        "The predicate is the same even check from earlier exercises: rem(n, 2) == 0."
      ],
      expected_output: "First 5 even squares: [4, 16, 36, 64, 100]\n"
    },

    # Level 12: Module Organization (051-055)
    %Exercise{
      number: 51,
      name: "Nested Modules",
      file: "051_nested_modules.ex",
      topic: "modules",
      hints: [
        "Predict: if a module is defined as `defmodule Arcade.HighScores`, what do you think its full name is from the outside? Define both modules in IEx and try calling a function on the inner one.",
        "A nested module is reached by its full dotted name: Outer.Inner.function(). The ??? in the call is just the inner module's name.",
        "For the dotted definition, write the inner module's name after Arcade., the same name used to call price/0 below it."
      ],
      expected_output: "Arcade: Pixel Palace\nChampion: AAA\nToken price: 2\n"
    },
    %Exercise{
      number: 52,
      name: "Alias",
      file: "052_alias.ex",
      topic: "modules",
      hints: [
        "Investigate: after `alias Fruit.Store.Inventory`, what name does Elixir give the module? Try calling count/1 on it in IEx using only part of the full name.",
        "alias A.B.C makes the LAST segment available as the module name. With `as: Inv`, the name is exactly the one you chose."
      ],
      expected_output: "Items: 3\nFirst: apple\n"
    },
    %Exercise{
      number: 53,
      name: "Import",
      file: "053_import.ex",
      topic: "modules",
      hints: [
        "Predict: what happens if you call upcase(\"beam\") without importing anything? And after `import String, only: [upcase: 1]`? Try both in IEx.",
        "import String, only: [...] lets you call the listed functions without the String. prefix. The ??? are exactly the names from the only: list above."
      ],
      expected_output: "BEAM\n   42\n"
    },
    %Exercise{
      number: 54,
      name: "Private Functions",
      file: "054_private_functions.ex",
      topic: "modules",
      hints: [
        "Investigate: define a tiny module in IEx with a defp function and try calling that function from outside the module. What error do you get?",
        "Private functions use a keyword very similar to def: it is def with one extra letter. Inside the module, call private helpers by bare name, like item_count(prices).",
        "item_count/1 should return how many elements the list has: the same length/1 call used in earlier exercises."
      ],
      expected_output: "Total: $60 (3 items)\n"
    },
    %Exercise{
      number: 55,
      name: "Module Attributes",
      file: "055_module_attributes.ex",
      topic: "modules",
      hints: [
        "Predict: @title is set at the top of the module. Inside title/0, how do you think you read that value back? Look at how welcome/0 uses @title in its string.",
        "A module attribute is read with @name anywhere in the module body, including inside functions. title/0 should return the attribute that holds \"Star Runner\"."
      ],
      expected_output: "Star Runner\n3\nWelcome to Star Runner! Lives: 3\n"
    },

    # Level 13: IO and File System (056-060)
    %Exercise{
      number: 56,
      name: "The IO Module",
      file: "056_io_module.ex",
      topic: "io",
      hints: [
        "Predict: if IO.write(\"a\") and IO.puts(\"b\") run back to back, what exactly appears on screen, and where does the cursor end up? Try both orders in IEx.",
        "One of the two IO printing functions adds a newline and the other does not. The first placeholder needs the one that leaves the line open for IO.puts(\"OK\") to finish.",
        "For the second placeholder you want the IO function that prints a value in its inspected form, accepts a label: option, and returns the value unchanged so the pipe keeps flowing."
      ],
      expected_output: "Status: OK\ntotal: 6\n"
    },
    %Exercise{
      number: 57,
      name: "Reading and Writing Files",
      file: "057_file_read_write.ex",
      topic: "io",
      hints: [
        "Investigate: in IEx, run File.write(Path.join(System.tmp_dir!(), \"probe.txt\"), \"hi\") and look at the return value. Then run File.read on the same path. What shapes do success results have?",
        "The three placeholders are all functions in the File module: one writes content to a path, one reads a whole file into a string, one deletes a file. Match each placeholder to its job.",
        "The patterns around the placeholders tell you the return shapes: `:ok = File.___(path, content)` for writing, `{:ok, content} = File.___(path)` for reading, and `:ok = File.___(path)` for removing."
      ],
      expected_output: "Read back: Hello from a file!\nCleaned up!\n"
    },
    %Exercise{
      number: 58,
      name: "Streaming Files Line by Line",
      file: "058_file_streaming.ex",
      topic: "io",
      hints: [
        "Predict: what is the difference between what File.read/1 returns and what File.stream!/1 returns? Call both on a file in IEx and compare.",
        "The first placeholder opens the file as a lazy stream of lines (a File function whose name ends in `!`). The second is the Enum function that adds all numbers of a collection together.",
        "Each streamed line still carries its trailing \"\\n\", which is why String.trim/1 runs before String.to_integer/1. After that, the pipeline ends in a one-word Enum consumer that produces the total."
      ],
      expected_output: "Total: 60\n"
    },
    %Exercise{
      number: 59,
      name: "The Path Module",
      file: "059_path_module.ex",
      topic: "io",
      hints: [
        "Investigate: in IEx, try Path.basename(\"data/reports/sales.csv\") and Path.extname(\"data/reports/sales.csv\"). Which one keeps the dot, and which one drops the directory?",
        "The first placeholder takes a LIST of parts and joins them with the correct separator. The other two dissect the resulting string: one returns only the file name, the other only the extension.",
        "Path.join accepts either separate arguments or a single list. Path.basename gives you \"sales.csv\"; the function that gives you \".csv\" (dot included) is Path.extname."
      ],
      expected_output: "Path: data/reports/sales.csv\nFile: sales.csv\nExtension: .csv\n"
    },
    %Exercise{
      number: 60,
      name: "Debugging with IO.inspect (and dbg)",
      file: "060_inspect_and_debug.ex",
      topic: "io",
      hints: [
        "Predict: IO.inspect/2 returns something. If it returned nil, what would happen to Enum.sum() in this pipeline? Check in IEx what IO.inspect([1, 2]) actually returns.",
        "The placeholder is a single pipe step that prints the list with the prefix \"doubled: \" and passes the list through untouched. It lives in the IO module and takes a label: option.",
        "The step you need has the shape `|> IO.inspect(label: \"doubled\")`. Notice the expected output prints the inspect line BEFORE \"Sum: 30\", because the inspect fires while the pipeline runs."
      ],
      expected_output: "doubled: [2, 4, 6, 8, 10]\nSum: 30\n"
    },

    # Level 14: Error Handling (061-065)
    %Exercise{
      number: 61,
      name: "Error Tuples",
      file: "061_error_tuples.ex",
      topic: "error_handling",
      hints: [
        "Predict: run Integer.parse(\"42\") and Integer.parse(\"abc\") in IEx. What extra piece of information does the tuple carry besides the value itself?",
        "You can match the bad input directly in the function head: a clause like def divide(_, 0) runs only when the divisor is zero.",
        "The second clause computes the result with div(a, b) and wraps it: {:ok, div(a, b)}."
      ],
      expected_output: "10 / 2 = 5\nError: division by zero\n"
    },
    %Exercise{
      number: 62,
      name: "Raise and Rescue",
      file: "062_raise_rescue.ex",
      topic: "error_handling",
      hints: [
        "Run raise ArgumentError, \"oops\" in IEx and look at what is printed. What kind of struct is an exception, and how would you match only that kind?",
        "rescue filters by exception type with e in ModuleName. Which module does Parser.parse_positive/1 raise for bad input?",
        "The clause is e in ArgumentError -> \"Rescued: \#{e.message}\"."
      ],
      expected_output: "Parsed: 42\nRescued: expected a positive number, got: -5\n"
    },
    %Exercise{
      number: 63,
      name: "Try and After",
      file: "063_try_after.ex",
      topic: "error_handling",
      hints: [
        "Predict: in the first try, does the after block run before or after Result: 42 is printed? Walk the evaluation order in your head before running.",
        "The after block's value is ignored, but its side effects still happen. The missing piece is just the cleanup message printed there.",
        "Fill the placeholder with the string \"Cleaning up\"."
      ],
      expected_output:
        "Working...\nCleaning up\nResult: 42\nCleaning up again\nRescued: something broke\n"
    },
    %Exercise{
      number: 64,
      name: "Throw and Catch",
      file: "064_throw_catch.ex",
      topic: "error_handling",
      hints: [
        "Predict: what does the try expression return if the loop finishes without throwing anything? And what does it return when a throw happens mid-loop?",
        "catch pattern-matches on the thrown value. Read the existing catch clause and throw something with exactly that shape.",
        "The clause expects {:found, n}, so throw that tuple: throw({:found, n})."
      ],
      expected_output: "Search result: 7\n"
    },
    %Exercise{
      number: 65,
      name: "The With Statement",
      file: "065_with_statement.ex",
      topic: "error_handling",
      hints: [
        "Predict: when the left side of <- does not match the step's return value, where does that value go? Trace run.(\"abc\") step by step.",
        "Every step returns {:ok, value}; the last pattern must bind the doubled number to the name used in the do block. For else, look at which error atom Pipeline.positive/1 returns.",
        "Bind with {:ok, doubled} <- and match {:error, :not_positive} in the else clause."
      ],
      expected_output: "Result: 42\nError: not a number\nError: not positive\n"
    },

    # Level 15: Protocols (066-068)
    %Exercise{
      number: 66,
      name: "Protocols Introduction",
      file: "066_protocols_intro.ex",
      topic: "protocols",
      hints: [
        "Predict: what happens in IEx if you interpolate a list directly, like \"\#{[1, 2]}\"? Try it, then try inspect([1, 2]) instead.",
        "String.Chars powers to_string/1 and interpolation; Inspect powers inspect/1. Integers have the first, lists and maps only have the second.",
        "Fill in to_string(number) for the <>, and inspect(list) / inspect(user) inside the interpolations."
      ],
      expected_output:
        "Number as string: 42\nList: [1, 2, 3]\nUser: %{name: \"exlings\", level: 15}\n"
    },
    %Exercise{
      number: 67,
      name: "Implementing a Protocol",
      file: "067_implementing_protocols.ex",
      topic: "protocols",
      hints: [
        "Predict: before any defimpl exists, what error does \"Price: \#{price}\" raise in IEx, and which protocol does the error message name?",
        "The defimpl needs its target after for:. Which module defines the struct being pattern-matched in to_string/1?",
        "Inside the body, interpolation already works on amount (integer) and currency (atom): return \"\#{amount} \#{currency}\"."
      ],
      expected_output: "Price: 99 USD\nTotal: 99 USD\n"
    },
    %Exercise{
      number: 68,
      name: "The Enumerable Protocol",
      file: "068_enumerable_protocol.ex",
      topic: "protocols",
      hints: [
        "Investigate: in IEx, run Enumerable.reduce([1, 2], {:cont, []}, fn x, acc -> {:cont, [x | acc]} end). What comes back, and what does that tell you about who handles {:cont, ...} for lists?",
        "count/1 must return a tagged tuple {:ok, n}; the number of songs is just the length of the inner list. For reduce/3, delegate: call Enumerable.reduce on the inner list.",
        "reduce's body is one line: Enumerable.reduce(songs, acc, fun). The list implementation handles halt and suspend for you."
      ],
      expected_output: "Count: 3\nLoud: [\"SONG A\", \"SONG B\", \"SONG C\"]\nHas song B? true\n"
    },

    # Level 16: Behaviours (069-071)
    %Exercise{
      number: 69,
      name: "Behaviours",
      file: "069_behaviours.ex",
      topic: "behaviours",
      hints: [
        "Predict: remove the @impl true line from a working module (or try it in any project): does the code still run? What does the compiler say instead?",
        "A callback looks like a typespec without a body: @callback name(args) :: return_type(). The adopting module names the behaviour module after @behaviour.",
        "@callback area(struct()) :: float() in Shape, @behaviour Shape inside Square, @impl true above area/1, and the body is side * side."
      ],
      expected_output: "Square area: 16.0\n"
    },
    %Exercise{
      number: 70,
      name: "Dispatching Through a Behaviour",
      file: "070_behaviour_dispatch.ex",
      topic: "behaviours",
      hints: [
        "Investigate: in IEx, assign module = String and call module.upcase(\"hi\"). What does that tell you about what a module name is, and what you can do with it?",
        "broadcast/3 receives provider as a plain variable holding a module. The call syntax provider.deliver(recipient, message) works exactly like Email.deliver/2.",
        "Email returns \"[email] to \#{recipient}: \#{message}\", Sms the same with [sms], and broadcast's body is provider.deliver(recipient, message)."
      ],
      expected_output:
        "[email] to alice@example.com: build succeeded\n[sms] to alice@example.com: build succeeded\n"
    },
    %Exercise{
      number: 71,
      name: "Generic Functions with Behaviours",
      file: "071_behaviour_generic.ex",
      topic: "behaviours",
      hints: [
        "Predict: Emitter.emit receives a module atom like QueryEncoder in its encoder variable. Once the module compiles, what does QueryEncoder.encode([a: 1]) return? Try calling it directly in IEx.",
        "When a variable holds a module name, you can call a function on it with the usual dot syntax: variable.function(args). The @callback typespec describes a function from a list of tuples to a String.t().",
        "emit/2 is a single line: encoder.encode(pairs)."
      ],
      expected_output: "Query: name=ana&lang=elixir\nCSV:   ana,elixir\n"
    },

    # Level 17: Sigils (072-074)
    %Exercise{
      number: 72,
      name: "The Regex Sigil",
      file: "072_regex_sigil.ex",
      topic: "sigils",
      hints: [
        "Predict: in IEx, run Regex.run(~r/[0-9]+/, \"abc 123 def 456\"). Which number comes back, and why that one instead of 456?",
        "The digit shorthand is \\d and the + quantifier means one or more. Named groups are written (?<name>pattern) and {n} repeats a class exactly n times.",
        "The date pattern has the shape (?<year>D{4})-(?<month>D{2}) where D is the digit class."
      ],
      expected_output: "Has digits: true\nOrder number: 42\nYear: 2026, Month: 08\n"
    },
    %Exercise{
      number: 73,
      name: "String and Word Sigils",
      file: "073_string_word_sigils.ex",
      topic: "sigils",
      hints: [
        "Predict: what does IO.puts(~S(a\#{1 + 1}b)) print compared to IO.puts(~s(a\#{1 + 1}b))? Try both in IEx before editing the exercise.",
        "The first gap needs the lowercase sigil (interpolation on), the second its uppercase twin. For the word list, the element type comes from a single letter right after the closing delimiter.",
        "The modifiers are s (strings, the default), a (atoms) and c (charlists). Which one produces [:alpha, :beta, :gamma]?"
      ],
      expected_output:
        "learning exlings is \"fun\"\nlearning \#{tool} is \"fun\"\nAtoms: [:alpha, :beta, :gamma]\n"
    },
    %Exercise{
      number: 74,
      name: "Calendar Sigils",
      file: "074_calendar_sigils.ex",
      topic: "sigils",
      hints: [
        "Predict: in IEx, evaluate ~D[2026-08-15] == \"2026-08-15\". Why is it false? Then inspect ~D[2026-08-15] and note which struct it builds.",
        "The date sigil is ~D with square brackets in YYYY-MM-DD format; the time sigil is ~T with HH:MM:SS.",
        "Both answers are single sigil literals: the deadline uses ~D[...] with the date from the header comment, the alarm uses ~T[...]."
      ],
      expected_output: "Deadline: 2026-08-15\nCompare: :gt\nDays apart: 226\nAlarm at: 07:30:00\n"
    },

    # Level 18: Mix and Testing (075)
    %Exercise{
      number: 75,
      name: "ExUnit Basics",
      file: "075_exunit_basics.ex",
      topic: "testing",
      kind: :exunit,
      hints: [
        "Predict: before changing anything, read the three tests and say out loud what add(2, 3) and even?(4) must return for each assert to pass.",
        "add/2 is a single expression with the + operator. For even?/1, think about the remainder of a division by 2: rem(n, 2) is 0 exactly when n is even.",
        "Make even?/1 return the boolean rem(n, 2) == 0."
      ]
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

  # Translations live in per-locale modules (Exlings.Exercises.PtBr etc.)
  # keyed by exercise number. English stays canonical in this module and
  # is the fallback when a locale lacks an entry.

  @translation_modules %{pt_br: Exlings.Exercises.PtBr}

  @doc "Exercise name in the given locale, falling back to English."
  def name(%Exercise{} = exercise, locale) do
    translated(locale, exercise.number, :name) || exercise.name
  end

  @doc "Exercise hints in the given locale, falling back to English."
  def hints(%Exercise{} = exercise, locale) do
    translated(locale, exercise.number, :hints) || exercise.hints
  end

  defp translated(:en, _number, _field), do: nil

  defp translated(locale, number, field) do
    with %{^locale => mod} <- @translation_modules,
         %{^number => entry} <- mod.entries() do
      Map.get(entry, field)
    else
      _ -> nil
    end
  end
end
