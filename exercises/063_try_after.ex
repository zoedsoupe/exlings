# Try and After
#
# Sometimes cleanup must run NO MATTER WHAT: closing a file,
# releasing a lock, restoring a value. The after block of a try
# expression always runs, whether the body succeeds, raises,
# throws or exits:
#
#   try do
#     # work that might fail
#   after
#     # cleanup: always runs
#   end
#
# The after block's return value is IGNORED. The try expression
# still returns the body's value (or keeps propagating the error):
#
#   result =
#     try do
#       10 / 2
#     after
#       IO.puts("cleaning up")
#     end
#   # prints "cleaning up", and result is 5.0
#
# rescue and after combine nicely: rescue handles the error and
# produces a value, after still runs for cleanup:
#
#   try do
#     raise "boom"
#   rescue
#     e -> "rescued: #{e.message}"
#   after
#     IO.puts("cleaning up")
#   end
#
# Your task:
# Add the missing cleanup messages so the output shows the work,
# the cleanup and the rescued error in the right order. Notice
# that the second after runs even though the body raises.

result =
  try do
    IO.puts("Working...")
    21 * 2
  after
    IO.puts(???)  # Should print "Cleaning up"
  end

IO.puts("Result: #{result}")

message =
  try do
    raise "something broke"
  rescue
    e -> "Rescued: #{e.message}"
  after
    IO.puts("Cleaning up again")
  end

IO.puts(message)
