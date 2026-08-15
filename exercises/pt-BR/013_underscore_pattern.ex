# O Padrão Underscore
#
# Às vezes você precisa combinar um padrão, mas não se importa com
# alguns dos valores. É aí que entra o underscore _!
#
# O que é o underscore _?
# - Um padrão especial que combina com qualquer coisa
# - O valor combinado é descartado (não é vinculado a uma variável)
# - Útil quando você só precisa de alguns valores de uma estrutura
#
# Exemplos:
#   {_, x} = {1, 2}           # Só nos importamos com x (que é 2)
#   [_, second, _] = [1, 2, 3]  # Só nos importamos com second (que é 2)
#   {:ok, _} = {:ok, 42}      # Só nos importa que seja :ok
#
# Por que usar underscore?
# - Deixa seu código mais claro (mostra o que você não precisa)
# - Evita avisos de variável não utilizada
# - Comum em casamento de padrão e cláusulas de função
#
# Múltiplos underscores:
# Você pode usar _ várias vezes no mesmo padrão:
#   {_, _, x, _} = {1, 2, 3, 4}  # Apenas x é vinculado (a 3)
#
# Sua tarefa:
# Extraia apenas o status da tupla, ignorando a mensagem de erro

{status, ???} = {:error, "File not found"}

IO.puts("Status: #{status}")
