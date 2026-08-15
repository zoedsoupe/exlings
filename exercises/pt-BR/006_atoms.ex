# Átomos
#
# Átomos são constantes cujo nome é o seu próprio valor. Eles são um dos
# recursos mais marcantes do Elixir!
#
# O que são átomos?
# - Começam com dois-pontos: :hello
# - O nome deles É o valor deles
# - Muito usados para códigos de status e opções
# - Muito eficientes em memória (o mesmo átomo usa o mesmo local de memória)
#
# Exemplos:
#   :ok
#   :error
#   :not_found
#   :success
#
# Caso de uso comum - tuplas de status de retorno:
#   {:ok, result}      # Operação bem-sucedida
#   {:error, reason}   # Operação falhou
#
# Átomos vs Strings:
# - Átomos: :hello (leves, use para valores conhecidos)
# - Strings: "hello" (flexíveis, use para entrada do usuário ou dados dinâmicos)
#
# true e false são, na verdade, átomos!
# - true é o mesmo que :true
# - false é o mesmo que :false
#
# Sua tarefa:
# Substitua ??? pelos átomos corretos

status = ???  # Deve ser :ok

message_type = ???  # Deve ser :success

# inspect/1 nos ajuda a ver a representação interna
IO.puts("Status: #{inspect(status)}")
IO.puts("Type: #{inspect(message_type)}")
