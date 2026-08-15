# O Operador Pin
#
# Lembra que o = pode revincular variáveis em Elixir? Às vezes você quer
# combinar com o valor ATUAL de uma variável em vez disso. É isso que o
# operador pin ^ faz!
#
# O problema sem o pin:
#   x = 1
#   x = 2      # x agora é 2 (revinculação)
#
# Variáveis podem ser revinculadas a novos valores no casamento de padrão,
# mas e se você quiser combinar com o valor existente?
#
# O operador pin ^:
# - Impede a revinculação
# - Combina com o valor atual
# - Sintaxe: ^nome_da_variavel
#
# Exemplos:
#   x = 1
#   ^x = 1     # Funciona (1 combina com 1)
#   ^x = 2     # Falha (1 não combina com 2)
#
#   expected = :ok
#   {^expected, value} = {:ok, 42}   # Combina! value é 42
#   {^expected, value} = {:error, 42}  # Falha! :ok != :error
#
# Por que isso é útil?
# - Garantir que um valor corresponde ao que você espera
# - Útil em cláusulas de função e case statements
# - Deixa suas intenções claras no código
#
# Sua tarefa:
# Use o operador pin para garantir que só combinamos tuplas :ok

expected_status = :ok

{???, value} = {:ok, 100}

IO.puts("Status matched! Value: #{value}")
