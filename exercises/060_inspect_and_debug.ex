# Debugging with IO.inspect (and dbg)
#
# IO.inspect/2 prints a value AND RETURNS IT UNCHANGED. That means
# it can sit in the middle of a pipe chain without disturbing the
# data flow:
#
#   1..10
#   |> Enum.map(fn n -> n * 2 end)
#   |> IO.inspect(label: "doubled")   # prints, then passes data on
#   |> Enum.sum()
#
# The label: option prefixes the printed line so you know WHICH
# inspect fired:
#   IO.inspect([2, 4], label: "doubled")   # prints: doubled: [2, 4]
#
# Elixir also ships dbg(), a fancier version you can call anywhere
# without importing: it prints the file, the line and the CODE of
# each pipe step alongside its value. Try it in IEx later:
#   1..5 |> Enum.map(fn n -> n * 2 end) |> dbg() |> Enum.sum()
#
# Your task:
# The pipeline below doubles the numbers 1..5 and sums them, but
# the intermediate list is invisible. Insert an IO.inspect with
# the label "doubled" between the map and the sum so the script
# prints exactly:
#   doubled: [2, 4, 6, 8, 10]
#   Sum: 30

sum =
  1..5
  |> Enum.map(fn n -> n * 2 end)
  |> ???   # peek at the doubled list with the label "doubled"
  |> Enum.sum()

IO.puts("Sum: #{sum}")
