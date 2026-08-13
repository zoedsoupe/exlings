# Stream Composition
#
# Chained Enum calls build an intermediate list at EVERY step:
#
#   1..100
#   |> Enum.map(fn n -> n * n end)         # list of 100
#   |> Enum.filter(fn n -> rem(n, 2) == 0 end)  # another list
#   |> Enum.take(5)                        # walk it again
#
# Streams compose instead. Each Stream step wraps the previous one,
# and everything runs in a SINGLE pass when an Enum function
# finally consumes the pipeline:
#
#   1..100
#   |> Stream.map(fn n -> n * n end)           # no work yet
#   |> Stream.filter(fn n -> rem(n, 2) == 0 end)  # still no work
#   |> Enum.take(5)                          # now it flows!
#
# Benefits:
# - No intermediate lists (less memory, less garbage)
# - take(5) stops early: elements after the 5th match are never
#   squared at all
#
# Your task:
# The map and take are wired up. Add the filter step so only even
# squares flow through

result =
  1..100
  |> Stream.map(fn n -> n * n end)
  |> Stream.filter(???)  # Keep only even numbers
  |> Enum.take(5)

IO.puts("First 5 even squares: #{inspect(result)}")
