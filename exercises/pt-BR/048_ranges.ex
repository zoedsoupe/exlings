# Ranges
#
# Um range representa uma sequência de inteiros entre dois valores:
#
#   1..5      # os números 1, 2, 3, 4, 5
#   1..10     # de 1 até 10
#
# Ranges são eficientes em memória: guardam só o início e o fim,
# não todos os valores do meio. Um range de 1..1_000_000 ocupa o
# mesmo espaço que 1..5!
#
# Ranges NÃO são listas, mas SÃO enumeráveis. Toda função do módulo
# Enum funciona direto neles:
#
#   Enum.sum(1..5)            # 15
#   Enum.map(1..3, fn n -> n * n end)  # [1, 4, 9]
#
# Quer uma lista de verdade? Converta explicitamente:
#   Enum.to_list(1..5)        # [1, 2, 3, 4, 5]
#
# Sua tarefa:
# Crie um range de 1 a 5 e veja o Enum trabalhar nele diretamente

range = ???  # Um range de 1 a 5

IO.puts("Range: #{inspect(range)}")
IO.puts("Sum: #{Enum.sum(range)}")

squares = Enum.map(range, fn n -> n * n end)
IO.puts("Squares: #{inspect(squares)}")
