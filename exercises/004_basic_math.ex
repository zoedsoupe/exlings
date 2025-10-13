# Basic Math
#
# Like most programming languages, Elixir can perform mathematical
# operations. Let's learn the basic arithmetic operators!
#
# Arithmetic Operators:
# - +   Addition        (5 + 3 = 8)
# - -   Subtraction     (5 - 3 = 2)
# - *   Multiplication  (5 * 3 = 15)
# - /   Division        (10 / 2 = 5.0)
# - div Integer division (10 div 3 = 3)
# - rem Remainder       (10 rem 3 = 1)
#
# Important note: The / operator always returns a float (decimal number),
# even if both operands are integers. If you want integer division,
# use div instead.
#
# Examples:
#   sum = 5 + 3           # 8
#   product = 4 * 7       # 28
#   result = 15 / 3       # 5.0 (a float!)
#   whole = 15 div 3      # 5 (an integer)
#
# Your task:
# Replace ??? with the correct operators to make the calculations work

# Calculate 10 + 5
sum = 10 ??? 5

# Calculate 20 - 8
difference = 20 ??? 8

# Calculate 6 * 7
product = 6 ??? 7

IO.puts("Sum: #{sum}")
IO.puts("Difference: #{difference}")
IO.puts("Product: #{product}")
