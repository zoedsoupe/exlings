# Casamento de Padrão - Introdução
#
# Aqui é onde o Elixir fica realmente interessante! Em Elixir, o operador =
# não é só atribuição - é casamento de padrão!
#
# O que é casamento de padrão?
# - O operador = tenta fazer os dois lados combinarem
# - Se eles combinam, as variáveis são vinculadas aos valores
# - Se não combinam, você recebe um erro
#
# Exemplos simples:
#   x = 5              # x combina com 5, x agora é 5
#   5 = x              # 5 combina com x (que é 5), funciona!
#   6 = x              # 6 não combina com x (que é 5), erro!
#
# Casamento de padrão com tuplas:
#   {a, b} = {1, 2}    # a é 1, b é 2
#   {x, y, z} = {1, 2, 3}  # x é 1, y é 2, z é 3
#
# Isso é incrivelmente poderoso! Você consegue extrair valores de
# estruturas de dados com facilidade.
#
# Por que isso é útil?
# - Extrair valores de dados complexos
# - Validar a estrutura dos dados
# - Escrever código mais limpo e legível
#
# Sua tarefa:
# Use casamento de padrão para extrair x e y da tupla

{x, y} = ???  # Deve combinar com a tupla {5, 10}

IO.puts("x = #{x}, y = #{y}")
