# Enum.each
#
# Enum.each/2 executa uma função para cada elemento, apenas pelos
# seus efeitos colaterais (como imprimir). Diferente de Enum.map,
# ela descarta os resultados e sempre retorna o átomo :ok.
#
# O que é Enum.each?
# - Recebe uma lista e uma função
# - Executa a função para cada elemento, em ordem
# - Retorna :ok, NÃO uma nova lista
# - Use quando você se importa com efeitos colaterais, não com resultados
#
# Enum.map vs Enum.each:
#   Enum.map([1, 2], fn n -> n * 2 end)
#   # Retorna [2, 4]
#
#   Enum.each([1, 2], fn n -> IO.puts(n) end)
#   # Imprime 1 e 2, retorna :ok
#
# Regra prática:
# - Quer dados transformados? Use Enum.map
# - Quer FAZER algo para cada item? Use Enum.each
#
# Sua tarefa:
# Use Enum.each para imprimir cada cor em sua própria linha

colors = ["red", "green", "blue"]

Enum.each(colors, ???)  # Imprime "Color: <color>" para cada elemento
