# Casamento de Padrão Aninhado
#
# O casamento de padrão pode ir vários níveis fundo! Você pode combinar
# estruturas de dados aninhadas em uma única expressão.
#
# O que são padrões aninhados?
# - Padrões dentro de padrões
# - Extraem valores de dados profundamente aninhados
# - Muito poderosos e expressivos
#
# Exemplos:
#   # Tuplas aninhadas
#   {{x, y}, z} = {{1, 2}, 3}
#   # x é 1, y é 2, z é 3
#
#   # Tupla com uma lista
#   {:ok, [first | rest]} = {:ok, [1, 2, 3]}
#   # first é 1, rest é [2, 3]
#
#   # Lista de tuplas
#   [{:name, name}, {:age, age}] = [{:name, "Alice"}, {:age, 30}]
#   # name é "Alice", age é 30
#
# Exemplo do mundo real:
# Imagine fazer o parse de uma resposta de uma API:
#   {:ok, %{status: 200, body: data}} = api_response
#
# Por que isso é útil?
# - Extrair exatamente o que você precisa de estruturas complexas
# - Lidar com formatos de dados diferentes com elegância
# - Muito comum em aplicações Elixir reais
#
# Sua tarefa:
# Extraia as coordenadas (x e y) da estrutura aninhada

{:point, ???} = {:point, {10, 20}}

IO.puts("x = #{x}, y = #{y}")
