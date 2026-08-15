# The IO Module
#
# You already know IO.puts/1, but the IO module has more tools:
#
# IO.puts/1 writes a string FOLLOWED by a newline:
#   IO.puts("hello")   # prints "hello\n"
#
# IO.write/1 writes EXACTLY what you give it, no newline added:
#   IO.write("hello")  # prints "hello" and stays on the same line
#
# IO.inspect/2 prints a value in its inspect form (like inspect/1
# shows it) and RETURNS the value unchanged. The label: option
# prefixes the output:
#   IO.inspect([1, 2], label: "list")   # prints: list: [1, 2]
#
# Your task:
# Make the script print exactly:
#   Status: OK
#   total: 6
#
# 1. Write "Status: " WITHOUT a newline, so IO.puts("OK") finishes
#    the same line
# 2. Inspect the sum with the label "total"

IO.???("Status: ")
IO.puts("OK")

[1, 2, 3]
|> Enum.sum()
|> IO.???(label: "total")
