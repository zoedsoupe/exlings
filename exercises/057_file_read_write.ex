# Reading and Writing Files
#
# File.write(path, content) writes a string to a file:
#   :ok = File.write("notes.txt", "remember the milk")
# It returns :ok on success or {:error, reason} on failure.
#
# File.read(path) reads the WHOLE file into memory as one string.
# It returns a tuple: {:ok, content} or {:error, reason}.
# Pattern matching on that tuple is the idiomatic way to handle
# both outcomes:
#
#   case File.read("notes.txt") do
#     {:ok, content} -> IO.puts(content)
#     {:error, reason} -> IO.puts("failed: #{reason}")
#   end
#
# Where should scratch files live? System.tmp_dir!() returns the
# operating system's temporary directory, and Path.join builds a
# path from parts:
#   Path.join(System.tmp_dir!(), "my_file.txt")
#
# Cleaning up matters: File.rm(path) deletes a file and returns
# :ok (or {:error, reason}).
#
# Your task:
# 1. Write the message to a file named "exlings_057.txt" inside
#    the tmp dir
# 2. Read it back, matching the {:ok, content} tuple
# 3. Delete the file so nothing is left behind

path = Path.join(System.tmp_dir!(), "exlings_057.txt")

:ok = File.???(path, "Hello from a file!")

{:ok, content} = File.???(path)

IO.puts("Read back: #{content}")

:ok = File.???(path)

IO.puts("Cleaned up!")
