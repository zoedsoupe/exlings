# O Módulo Path
#
# Caminhos são apenas strings, mas juntá-los na mão com "/" é
# frágil e não é portável. O módulo Path monta e desmonta caminhos
# para você:
#
#   Path.join("logs", "app.log")     # "logs/app.log"
#   Path.join(["a", "b", "c.txt"])   # "a/b/c.txt"
#   Path.basename("logs/app.log")    # "app.log"
#   Path.extname("app.log")          # ".log"  (ponto incluído!)
#   Path.dirname("logs/app.log")     # "logs"
#
# Path.expand(path) resolve partes relativas (como ~, .., .) em um
# caminho ABSOLUTO:
#   Path.expand("reports", "data")   # "/.../data/reports"
# O resultado depende da sua máquina e do diretório atual, então
# este exercício só imprime partes portáveis e relativas.
#
# Sua tarefa:
# Monte o caminho relativo "data/reports/sales.csv" a partir da
# lista de partes, depois extraia o basename e a extensão. O
# script deve imprimir:
#   Path: data/reports/sales.csv
#   File: sales.csv
#   Extension: .csv

path = Path.???(["data", "reports", "sales.csv"])

IO.puts("Path: #{path}")
IO.puts("File: #{Path.???(path)}")
IO.puts("Extension: #{Path.???(path)}")
