# Matemática Básica
#
# Como a maioria das linguagens de programação, Elixir sabe realizar
# operações matemáticas. Vamos aprender os operadores aritméticos básicos!
#
# Operadores aritméticos:
# - +   Adição              (5 + 3 = 8)
# - -   Subtração           (5 - 3 = 2)
# - *   Multiplicação       (5 * 3 = 15)
# - /   Divisão             (10 / 2 = 5.0)
# - div Divisão inteira     (10 div 3 = 3)
# - rem Resto da divisão    (10 rem 3 = 1)
#
# Nota importante: o operador / sempre retorna um float (número decimal),
# mesmo que os dois operandos sejam inteiros. Se você quer divisão inteira,
# use div no lugar.
#
# Exemplos:
#   sum = 5 + 3           # 8
#   product = 4 * 7       # 28
#   result = 15 / 3       # 5.0 (um float!)
#   whole = 15 div 3      # 5 (um inteiro)
#
# Sua tarefa:
# Substitua ??? pelos operadores corretos para fazer os cálculos funcionarem

# Calcule 10 + 5
sum = 10 ??? 5

# Calcule 20 - 8
difference = 20 ??? 8

# Calcule 6 * 7
product = 6 ??? 7

IO.puts("Sum: #{sum}")
IO.puts("Difference: #{difference}")
IO.puts("Product: #{product}")
