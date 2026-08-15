# Enum.group_by
#
# Enum.group_by/2 divide uma lista em grupos, retornados como um mapa.
# A função que você passa calcula a CHAVE de cada elemento, e
# elementos com a mesma chave acabam no mesmo grupo.
#
# O que é Enum.group_by?
# - Recebe uma lista e uma função
# - O valor de retorno da função vira a chave do mapa
# - Retorna um mapa: %{key => [elementos com aquela chave]}
#
# Sintaxe:
#   Enum.group_by(list, fn element -> group_key end)
#
# Exemplos:
#   Enum.group_by([1, 2, 3, 4], fn n -> rem(n, 2) end)
#   # Retorna %{0 => [2, 4], 1 => [1, 3]}
#
#   Enum.group_by(["hi", "hey", "yo"], fn w -> String.length(w) end)
#   # Retorna %{2 => ["hi", "yo"], 3 => ["hey"]}
#
# O resultado é um mapa, então você pode acessar os grupos pela chave:
#   groups = Enum.group_by([1, 2, 3], fn n -> rem(n, 2) end)
#   groups[0]  # [2]
#
# Sua tarefa:
# Agrupe os números nos grupos :even e :odd
# (uma expressão if pode retornar o átomo certo para cada número)

numbers = [1, 2, 3, 4, 5, 6]

groups = Enum.group_by(numbers, ???)  # Retorna :even ou :odd para cada número

IO.puts("Even: #{inspect(groups.even)}")
IO.puts("Odd: #{inspect(groups.odd)}")
