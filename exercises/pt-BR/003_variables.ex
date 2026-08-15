# Variáveis
#
# Variáveis são como caixas com etiquetas que guardam valores. Elas nos
# permitem armazenar dados e usá-los depois no nosso programa.
#
# Em Elixir:
# - Variáveis recebem valores pelo operador =
# - Nomes de variáveis usam snake_case (letras minúsculas com underscores)
# - Variáveis são imutáveis (elas não mudam, você cria novas)
#
# Exemplos:
#   age = 25              # Vincula o valor 25 à variável 'age'
#   name = "Alice"        # Vincula a string "Alice" a 'name'
#   is_learning = true    # Vincula o booleano true a 'is_learning'
#
# Usamos o operador = para vincular valores a variáveis. Em Elixir,
# chamamos isso de "casamento de padrão" em vez de "atribuição", mas por
# enquanto você pode pensar nisso como dar um nome a um valor.
#
# Interpolação de strings:
# - Você pode inserir valores de variáveis dentro de strings usando #{}
# - Exemplo: "Hello, #{name}!" vira "Hello, Alice!"
#
# Sua tarefa:
# Substitua ??? pelo número 42 para vinculá-lo à variável

answer = ???

# Esta linha imprime o valor de 'answer' dentro da string
IO.puts("The answer is: #{answer}")
