# Streaming Files Line by Line
#
# File.read/1 loads the WHOLE file into memory at once. That is
# fine for small files, but a 10 GB log would blow up your memory.
#
# File.stream!(path) returns a Stream that yields the file one
# line at a time. Each yielded line keeps its trailing "\n".
# Combined with the Stream and Enum functions you already know,
# you can process huge files lazily, one line at a time:
#
#   "big.log"
#   |> File.stream!()
#   |> Stream.map(&String.trim/1)   # drop the trailing "\n"
#   |> Enum.count()
#
# Nothing touches the disk until an Enum function consumes the
# stream, exactly like the streams over ranges you built before.
#
# Your task:
# A file with one number per line is written to the tmp dir for
# you. Stream it, trim each line, convert each to an integer and
# sum them all. Finally delete the file.

path = Path.join(System.tmp_dir!(), "exlings_058.txt")

:ok = File.write(path, "10\n20\n30\n")

total =
  path
  |> File.???()
  |> Stream.map(&String.trim/1)
  |> Stream.map(&String.to_integer/1)
  |> Enum.???()

IO.puts("Total: #{total}")

:ok = File.rm(path)
