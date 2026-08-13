# String Module Functions
#
# You already know strings from exercise 005. The String module
# has a rich API for working with them. Some favorites:
#
#   String.trim("  hi  ")            # "hi" (removes surrounding whitespace)
#   String.upcase("hi")              # "HI"
#   String.downcase("HI")            # "hi"
#   String.split("a b c")            # ["a", "b", "c"] (splits on whitespace)
#   String.replace("a-b", "-", "+")  # "a+b"
#   String.contains?("elixir", "xi")     # true
#   String.starts_with?("elixir", "eli") # true
#   String.length("elixir")          # 6
#
# Remember: strings are immutable! These functions always return
# NEW strings, never change the original.
#
# Since each function takes the string as its first argument, they
# pipe together beautifully.
#
# Your task:
# Complete the pipeline: trim the string, upcase it, then split
# it into words

words =
  "  hello elixir world  "
  |> String.trim()
  |> ???  # Upcase the trimmed string
  |> String.split()

IO.puts("Words: #{inspect(words)}")
IO.puts("Count: #{length(words)}")
