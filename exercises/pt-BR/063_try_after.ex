# Try e After
#
# Às vezes a limpeza precisa rodar NÃO IMPORTA O QUE ACONTEÇA:
# fechar um arquivo, liberar um lock, restaurar um valor. O bloco
# after de uma expressão try sempre roda, seja o corpo bem-sucedido,
# levantando exceção, lançando throw ou saindo:
#
#   try do
#     # trabalho que pode falhar
#   after
#     # limpeza: sempre roda
#   end
#
# O valor de retorno do bloco after é IGNORADO. A expressão try
# ainda retorna o valor do corpo (ou continua propagando o erro):
#
#   result =
#     try do
#       10 / 2
#     after
#       IO.puts("cleaning up")
#     end
#   # imprime "cleaning up", e result é 5.0
#
# rescue e after combinam bem: rescue trata o erro e produz um
# valor, after ainda roda para a limpeza:
#
#   try do
#     raise "boom"
#   rescue
#     e -> "rescued: #{e.message}"
#   after
#     IO.puts("cleaning up")
#   end
#
# Sua tarefa:
# Adicione as mensagens de limpeza que faltam para que a saída mostre
# o trabalho, a limpeza e o erro capturado na ordem certa. Note que
# o segundo after roda mesmo com o corpo levantando exceção.

result =
  try do
    IO.puts("Working...")
    21 * 2
  after
    IO.puts(???)  # Deve imprimir "Cleaning up"
  end

IO.puts("Result: #{result}")

message =
  try do
    raise "something broke"
  rescue
    e -> "Rescued: #{e.message}"
  after
    IO.puts("Cleaning up again")
  end

IO.puts(message)
