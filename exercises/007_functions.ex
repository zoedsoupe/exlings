# Functions in Elixir
#
# Functions are the building blocks of Elixir programs. They let you
# organize and reuse code.
#
# What are Modules?
# - Modules are collections of functions
# - They help organize related functions together
# - Think of them as containers or namespaces
#
# Defining Functions:
# - Use def to define a function
# - Function names use snake_case
# - Functions are defined inside modules
#
# Syntax:
#   def function_name(parameter1, parameter2) do
#     # function body
#     result
#   end
#
# Implicit Returns:
# - Elixir functions return the last expression automatically
# - No need for a return keyword
# - Example: a function ending with a + b returns that sum
#
# Function Arity:
# - Arity means the number of parameters a function takes
# - Written as function_name/arity
# - Example: add/2 means "add function with 2 parameters"
# - add/2 and add/3 are different functions!
#
# Calling Functions:
# - Use ModuleName.function_name(arguments)
# - Example: Math.add(5, 10)
#
# Your task:
# Complete the add/2 function to return the sum of a and b

defmodule Math do
  def add(a, b) do
    ???  # Return the sum of a and b
  end
end

result = Math.add(5, 10)
IO.puts("Sum: #{result}")
