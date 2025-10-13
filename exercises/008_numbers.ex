# Numbers and Types
#
# Elixir has two main types of numbers: integers and floats.
# Understanding the difference is important!
#
# Integers:
# - Whole numbers: 1, 42, -17, 0
# - No decimal point
# - Can be arbitrarily large (no overflow in normal use!)
# - You can use underscores for readability: 1_000_000
#
# Floats:
# - Decimal numbers: 1.5, 3.14, -0.5
# - Always have a decimal point
# - 64-bit double precision
#
# Examples:
#   age = 25                    # integer
#   pi = 3.14159                # float
#   big_number = 1_000_000      # integer (underscore ignored)
#
# The is_integer/1 and is_float/1 functions:
# - Check if a value is an integer or float
# - Return true or false
#
# Remember from exercise 004:
# - Division (/) ALWAYS returns a float
# - Integer division uses div
#
# Your task:
# Create the correct types of numbers

my_integer = ???  # Any integer you like

my_float = ???  # Any float you like (must have decimal point!)

# Let's check the types!
IO.puts("Integer: #{my_integer}, is integer? #{is_integer(my_integer)}")
IO.puts("Float: #{my_float}, is float? #{is_float(my_float)}")
