# Anonymous Functions
#
# Anonymous functions are functions without a name. They're perfect
# for short operations and passing functions as arguments!
#
# What are anonymous functions?
# - Functions without a name
# - Can be assigned to variables
# - Created with fn...end
# - Called with a dot: my_func.(args)
#
# Syntax:
#   fn arg1, arg2 -> expression end
#
# The arrow -> separates parameters from the body.
#
# Examples:
#   add = fn a, b -> a + b end
#   add.(5, 3)  # 8 (note the dot!)
#
#   greet = fn name -> "Hello, #{name}!" end
#   greet.("Alice")  # "Hello, Alice!"
#
# Why anonymous functions?
# - Pass functions as arguments (higher-order functions)
# - Quick, one-off operations
# - Closures (capture variables from outer scope)
#
# Named vs Anonymous:
# - Named functions: Defined with def, no dot when calling
# - Anonymous functions: Use fn...end, need dot when calling
#
# Multi-line anonymous functions:
#   my_func = fn x ->
#     result = x * 2
#     result + 1
#   end
#
# Your task:
# Create an anonymous function that doubles a number

double = fn ??? -> ??? end

result = double.(21)
IO.puts("Double of 21 is: #{result}")
