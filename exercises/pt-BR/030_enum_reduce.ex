# Enum.reduce
#
# Enum.reduce/3 combina todos os elementos de uma lista em um único valor.
# Ele "dobra" a lista, carregando um acumulador ao longo do caminho.
#
# O que é Enum.reduce?
# - Recebe uma lista, um valor inicial (o acumulador) e uma função
# - A função recebe cada elemento e o acumulador atual
# - O que a função retorna vira o novo acumulador
# - Retorna o acumulador final
#
# Sintaxe:
#   Enum.reduce(list, initial_acc, fn element, acc -> new_acc end)
#
# Como funciona a soma de [1, 2, 3] com acc inicial 0:
#   passo 1: elemento 1, acc 0 -> retorna 1
#   passo 2: elemento 2, acc 1 -> retorna 3
#   passo 3: elemento 3, acc 3 -> retorna 6
#   Resultado final: 6
#
# Exemplos:
#   Enum.reduce([1, 2, 3], 0, fn n, acc -> n + acc end)
#   # Retorna 6
#
#   Enum.reduce([2, 3, 4], 1, fn n, acc -> n * acc end)
#   # Retorna 24
#
# Sua tarefa:
# Use Enum.reduce para calcular a soma e o produto da lista

numbers = [1, 2, 3, 4, 5]

sum = Enum.reduce(numbers, 0, ???)      # Some cada elemento ao acumulador
product = Enum.reduce(numbers, 1, ???)  # Multiplique cada elemento pelo acumulador

IO.puts("Sum: #{sum}")
IO.puts("Product: #{product}")
