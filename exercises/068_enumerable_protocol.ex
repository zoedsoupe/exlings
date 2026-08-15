# The Enumerable Protocol
#
# Enum.map, Enum.count, Enum.member?, Enum.sum... they all work on
# lists, ranges, maps and streams. How can ONE module know how to
# walk so many different types? The Enumerable protocol.
#
# Enumerable has four callbacks:
#
#   reduce(enumerable, acc, fun)   # walk the elements (the core one!)
#   count(enumerable)              # {:ok, n} or {:error, module}
#   member?(enumerable, value)     # {:ok, bool} or {:error, module}
#   slice(enumerable)              # {:ok, size, fun} or {:error, module}
#
# Only reduce/3 truly matters: when the others return
# {:error, module}, Enum falls back to a default written in terms of
# reduce. Implement reduce and every Enum function works.
#
# The accumulator tells reduce what to do next:
#   {:cont, acc}     keep going
#   {:halt, acc}     stop now (this is how Enum.take stops early)
#   {:suspend, acc}  pause (used by Stream internals)
#
# Handling all three by hand is fiddly. A shortcut for wrapper
# structs: delegate to the enumerable INSIDE your struct! Lists
# already implement everything correctly, halting included:
#
#   def reduce(%Playlist{songs: songs}, acc, fun) do
#     Enumerable.reduce(songs, acc, fun)
#   end
#
# Your task:
# A Playlist wraps a plain list of songs. Finish its Enumerable
# implementation so Enum functions treat it like the list inside:
# 1. count: return {:ok, ...} with the number of songs
# 2. reduce: delegate to the inner list as shown above
# (member?/slice are already wired to the reduce-based fallback)
#
# Expected output:
#   Count: 3
#   Loud: ["SONG A", "SONG B", "SONG C"]
#   Has song B? true

defmodule Playlist do
  defstruct songs: []

  def new(songs) do
    %Playlist{songs: songs}
  end
end

defimpl Enumerable, for: Playlist do
  def count(%Playlist{songs: songs}) do
    ???
  end

  def member?(_playlist, _value), do: {:error, __MODULE__}

  def slice(_playlist), do: {:error, __MODULE__}

  def reduce(%Playlist{songs: songs}, acc, fun) do
    ???
  end
end

playlist = Playlist.new(["song A", "song B", "song C"])

IO.puts("Count: #{Enum.count(playlist)}")
IO.inspect(Enum.map(playlist, &String.upcase/1), label: "Loud")
IO.puts("Has song B? #{Enum.member?(playlist, "song B")}")
