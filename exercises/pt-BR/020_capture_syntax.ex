# Sintaxe de Captura
#
# A sintaxe de captura &(...) é um atalho para criar funções
# anônimas. É mais concisa e muito usada em Elixir!
#
# O que é a sintaxe de captura?
# - Atalho para funções anônimas
# - Usa & e placeholders numerados: &1, &2, &3...
# - Deixa o código mais curto e limpo
# - Também pode capturar funções nomeadas
#
# Sintaxe básica:
#   &(&1 + &2)  é o mesmo que  fn a, b -> a + b end
#
# Os placeholders:
# - &1 é o primeiro argumento
# - &2 é o segundo argumento
# - &3 é o terceiro argumento, e assim por diante...
#
# Exemplos:
#   double = &(&1 * 2)
#   double.(5)  # 10
#
#   add = &(&1 + &2)
#   add.(3, 4)  # 7
#
# Capturando funções nomeadas:
# Você também pode capturar funções existentes:
#   to_string_func = &Integer.to_string/1
#   to_string_func.(42)  # "42"
#
# Quando usar a sintaxe de captura?
# - Funções simples e curtas
# - Passar funções para funções do Enum
# - Quando você quer código conciso
#
# Quando NÃO usar?
# - Lógica complexa (use fn...end em vez disso)
# - Quando deixa o código menos legível
#
# Sua tarefa:
# Use a sintaxe de capture para criar uma função que soma 10 a um número

add_ten = ???

result = add_ten.(32)
IO.puts("32 + 10 = #{result}")
