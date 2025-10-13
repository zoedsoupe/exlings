# Booleans
#
# Booleans represent true or false values. They're essential for
# making decisions in your code!
#
# The two boolean values:
# - true   (yes, correct, on)
# - false  (no, incorrect, off)
#
# As mentioned in the atoms exercise, true and false are actually
# atoms (:true and :false), but we usually just write them as
# true and false.
#
# Boolean operators:
# - and  - Returns true if both sides are true
# - or   - Returns true if at least one side is true
# - not  - Flips true to false and false to true
#
# Examples:
#   true and true   # true
#   true and false  # false
#   true or false   # true
#   not true        # false
#
# Comparison operators (return booleans):
# - ==  equal to
# - !=  not equal to
# - >   greater than
# - <   less than
# - >=  greater than or equal to
# - <=  less than or equal to
#
# Your task:
# Replace ??? with boolean values (true or false) to make the statements correct

is_elixir_fun = ???  # Is learning Elixir fun? (true)

is_earth_flat = ???  # Is the Earth flat? (false)

result = is_elixir_fun and not is_earth_flat

IO.puts("Elixir is fun: #{is_elixir_fun}")
IO.puts("Earth is flat: #{is_earth_flat}")
IO.puts("Result: #{result}")
