# The Pin Operator
#
# Remember how = can rebind variables in Elixir? Sometimes you want
# to match against the CURRENT value of a variable instead. That's
# what the pin operator ^ does!
#
# The problem without pin:
#   x = 1
#   x = 2      # x is now 2 (rebinding)
#
# Variables can be rebound to new values in pattern matching,
# but what if you want to match the existing value?
#
# The pin operator ^:
# - Prevents rebinding
# - Matches against the current value
# - Syntax: ^variable_name
#
# Examples:
#   x = 1
#   ^x = 1     # Succeeds (1 matches 1)
#   ^x = 2     # Fails (1 doesn't match 2)
#
#   expected = :ok
#   {^expected, value} = {:ok, 42}   # Matches! value is 42
#   {^expected, value} = {:error, 42}  # Fails! :ok != :error
#
# Why is this useful?
# - Assert that a value matches what you expect
# - Useful in function clauses and case statements
# - Makes your intentions clear in the code
#
# Your task:
# Use the pin operator to ensure we only match :ok tuples

expected_status = :ok

{???, value} = {:ok, 100}

IO.puts("Status matched! Value: #{value}")
