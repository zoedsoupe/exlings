# Stream Module Introduction
#
# Enum functions are EAGER: they process the whole collection
# right away and return a result.
#
# Stream functions are LAZY: they build a recipe for work, but do
# nothing until something consumes the stream.
#
# Compare:
#   Enum.map(1..5, fn n -> n * 2 end)     # [2, 4, 6, 8, 10] right now
#   Stream.map(1..5, fn n -> n * 2 end)   # a stream, nothing computed
#
# Why laziness matters:
# - You can describe work over HUGE collections without walking
#   them fully
# - Nothing runs until you actually need values
#
# How do you get values out? Any Enum function that returns a
# result (not a stream) consumes it:
#   1..1_000_000 |> Stream.map(fn n -> n * 2 end) |> Enum.take(3)
#   # [2, 4, 6], touching only the first 3 elements!
#
# Your task:
# The stream below describes doubling a million numbers. Consume
# it and take only the first three results

doubled =
  1..1_000_000
  |> Stream.map(fn n -> n * 2 end)

first_three = ???(doubled, 3)  # Which Enum function takes N elements?

IO.puts("First three: #{inspect(first_three)}")
