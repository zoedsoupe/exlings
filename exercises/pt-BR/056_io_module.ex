# O Módulo IO
#
# Você já conhece IO.puts/1, mas o módulo IO tem mais ferramentas:
#
# IO.puts/1 escreve uma string SEGUIDA de uma quebra de linha:
#   IO.puts("hello")   # imprime "hello\n"
#
# IO.write/1 escreve EXATAMENTE o que você passar, sem quebra de
# linha:
#   IO.write("hello")  # imprime "hello" e fica na mesma linha
#
# IO.inspect/2 imprime um valor na sua forma inspecionada (como
# inspect/1 mostra) e RETORNA o valor sem alteração. A opção
# label: prefixa a saída:
#   IO.inspect([1, 2], label: "list")   # imprime: list: [1, 2]
#
# Sua tarefa:
# Faça o script imprimir exatamente:
#   Status: OK
#   total: 6
#
# 1. Escreva "Status: " SEM quebra de linha, para que
#    IO.puts("OK") termine a mesma linha
# 2. Inspecione a soma com o label "total"

IO.???("Status: ")
IO.puts("OK")

[1, 2, 3]
|> Enum.sum()
|> IO.???(label: "total")
