# Variables
#
# Variables are like labeled boxes that hold values. They let us store
# data and use it later in our program.
#
# In Elixir:
# - Variables are bound using the = operator
# - Variable names use snake_case (lowercase with underscores)
# - Variables are immutable (they don't change, you create new ones)
#
# Examples:
#   age = 25              # Bind the value 25 to the variable 'age'
#   name = "Alice"        # Bind the string "Alice" to 'name'
#   is_learning = true    # Bind the boolean true to 'is_learning'
#
# We use the = operator to bind values to variables. In Elixir, we
# call this "pattern matching" rather than "assignment", but for now
# you can think of it as giving a name to a value.
#
# String Interpolation:
# - You can insert variable values into strings using #{}
# - Example: "Hello, #{name}!" becomes "Hello, Alice!"
#
# Your task:
# Replace ??? with the number 42 to bind it to the variable

answer = ???

# This line prints the value of 'answer' inside the string
IO.puts("The answer is: #{answer}")
