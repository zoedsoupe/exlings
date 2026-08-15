# Enum.sort
#
# Enum.sort/1 ordena uma lista do menor para o maior.
# Enum.sort/2 permite fornecer sua própria função de comparação.
#
# Ordenação básica:
#   Enum.sort([3, 1, 2])
#   # Retorna [1, 2, 3]
#
#   Enum.sort(["banana", "apple"])
#   # Retorna ["apple", "banana"]
#
# Ordenação personalizada com uma função de comparação:
# A função recebe dois elementos e deve retornar true quando
# o primeiro deve vir ANTES do segundo.
#
#   Enum.sort([3, 1, 2], fn a, b -> a >= b end)
#   # Retorna [3, 2, 1] (decrescente)
#
# Também existe um atalho para ordem crescente/decrescente:
#   Enum.sort([3, 1, 2], :asc)   # [1, 2, 3]
#   Enum.sort([3, 1, 2], :desc)  # [3, 2, 1]
#
# Sua tarefa:
# A ordenação crescente já está pronta. Ordene a mesma lista em
# ordem decrescente usando uma função de comparação personalizada

numbers = [5, 2, 8, 1, 3]

ascending = Enum.sort(numbers)
descending = Enum.sort(numbers, ???)  # Maior primeiro: a vem antes de b quando a >= b

IO.puts("Ascending: #{inspect(ascending)}")
IO.puts("Descending: #{inspect(descending)}")
