# Atoms
#
# Atoms are constants where their name is their value. They're one of
# Elixir's most distinctive features!
#
# What are atoms?
# - Start with a colon: :hello
# - Their name IS their value
# - Often used for status codes and options
# - Very memory efficient (same atom uses same memory location)
#
# Examples:
#   :ok
#   :error
#   :not_found
#   :success
#
# Common use case - Return status tuples:
#   {:ok, result}      # Operation succeeded
#   {:error, reason}   # Operation failed
#
# Atoms vs Strings:
# - Atoms: :hello (lightweight, use for known values)
# - Strings: "hello" (flexible, use for user input or dynamic data)
#
# True and false are actually atoms!
# - true is the same as :true
# - false is the same as :false
#
# Your task:
# Replace ??? with the correct atoms

status = ???  # Should be :ok

message_type = ???  # Should be :success

# inspect/1 helps us see the internal representation
IO.puts("Status: #{inspect(status)}")
IO.puts("Type: #{inspect(message_type)}")
