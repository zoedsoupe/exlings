# The Path Module
#
# Paths are just strings, but joining them by hand with "/" is
# fragile and not portable. The Path module builds and dissects
# paths for you:
#
#   Path.join("logs", "app.log")     # "logs/app.log"
#   Path.join(["a", "b", "c.txt"])   # "a/b/c.txt"
#   Path.basename("logs/app.log")    # "app.log"
#   Path.extname("app.log")          # ".log"  (dot included!)
#   Path.dirname("logs/app.log")     # "logs"
#
# Path.expand(path) resolves relative pieces (like ~, .., .) into
# an ABSOLUTE path:
#   Path.expand("reports", "data")   # "/.../data/reports"
# The result depends on your machine and current directory, so
# this exercise only prints portable, relative pieces.
#
# Your task:
# Build the relative path "data/reports/sales.csv" from the list
# of parts, then extract its basename and its extension. The
# script should print:
#   Path: data/reports/sales.csv
#   File: sales.csv
#   Extension: .csv

path = Path.???(["data", "reports", "sales.csv"])

IO.puts("Path: #{path}")
IO.puts("File: #{Path.???(path)}")
IO.puts("Extension: #{Path.???(path)}")
