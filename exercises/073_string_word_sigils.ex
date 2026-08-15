# String and Word Sigils (~s, ~S and ~w)
#
# The ~s sigil builds a string, just like "...", but with a twist:
# you pick the delimiter. Inside ~s(...) or ~s[...] you can use
# quotes freely without escaping them:
#
#   ~s(she said "hi")     # she said "hi"
#
# Lowercase ~s keeps interpolation and escape sequences ON.
# Uppercase ~S turns everything OFF (raw text, exactly as typed):
#
#   name = "exlings"
#   ~s(hello #{name})     # "hello exlings"
#   ~S(hello #{name})     # "hello #{name}" (no interpolation!)
#
# The ~w sigil builds a LIST OF WORDS split on whitespace. A
# modifier after the closing delimiter picks the element type:
#
#   ~w(red green blue)     # ["red", "green", "blue"]  (s = strings, default)
#   ~w(red green blue)a    # [:red, :green, :blue]     (a = atoms)
#   ~w(red green blue)c    # ['red', 'green', 'blue']  (c = charlists)
#
# Your task:
# Replace each ??? with a sigil expression. Expected output:
#
#   learning exlings is "fun"
#   learning #{tool} is "fun"
#   Atoms: [:alpha, :beta, :gamma]

tool = "exlings"

# Build this sentence with the ~s sigil, interpolating tool:
#   learning exlings is "fun"
# (escaping those quotes in a "..." string would be noisy!)
IO.puts(???)

# Print the SAME template literally, with no interpolation and no
# escapes processed (uppercase sigil):
#   learning #{tool} is "fun"
IO.puts(???)

# Build the list [:alpha, :beta, :gamma] with the ~w sigil and the
# right modifier after the closing delimiter
IO.inspect(???, label: "Atoms")
