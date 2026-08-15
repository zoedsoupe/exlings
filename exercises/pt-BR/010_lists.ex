# Listas
#
# Listas são coleções ordenadas que podem crescer e encolher.
# Elas são uma das estruturas de dados mais importantes em Elixir!
#
# O que são listas?
# - Escritas com colchetes: [1, 2, 3]
# - Podem conter qualquer tipo de valor
# - Podem misturar tipos (mas geralmente não se faz isso): [1, "hello", :ok]
# - Podem crescer e encolher dinamicamente
# - São listas encadeadas (eficientes para adicionar elementos no início)
#
# Exemplos:
#   numbers = [1, 2, 3, 4, 5]
#   names = ["Alice", "Bob", "Charlie"]
#   empty = []
#
# Operações de lista que você vai aprender em breve:
# - Adicionar elementos no início (muito rápido!)
# - Desmontar listas (começo e resto)
# - Iterar sobre listas
#
# Listas vs Tuplas:
# - Listas [] - tamanho dinâmico, use para coleções
# - Tuplas {} - tamanho fixo, use para dados agrupados
#
# Sua tarefa:
# Crie as listas com os valores corretos

# Crie uma lista com os números 1, 2, 3
numbers = ???

# Crie uma lista com as strings "red", "green", "blue"
colors = ???

IO.puts("Numbers: #{inspect(numbers)}")
IO.puts("Colors: #{inspect(colors)}")
