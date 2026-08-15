# Depuração com IO.inspect (e dbg)
#
# IO.inspect/2 imprime um valor E O RETORNA SEM ALTERAÇÃO. Isso
# significa que ele pode ficar no meio de uma cadeia de pipes sem
# perturbar o fluxo dos dados:
#
#   1..10
#   |> Enum.map(fn n -> n * 2 end)
#   |> IO.inspect(label: "doubled")   # imprime e passa os dados adiante
#   |> Enum.sum()
#
# A opção label: prefixa a linha impressa para você saber QUAL
# inspect disparou:
#   IO.inspect([2, 4], label: "doubled")   # imprime: doubled: [2, 4]
#
# Elixir também traz dbg(), uma versão mais poderosa que você pode
# chamar em qualquer lugar sem importar: ela imprime o arquivo, a
# linha e o CÓDIGO de cada passo do pipe junto com o valor.
# Experimente no IEx depois:
#   1..5 |> Enum.map(fn n -> n * 2 end) |> dbg() |> Enum.sum()
#
# Sua tarefa:
# O pipeline abaixo dobra os números de 1..5 e os soma, mas a
# lista intermediária é invisível. Insira um IO.inspect com o
# label "doubled" entre o map e o sum para que o script imprima
# exatamente:
#   doubled: [2, 4, 6, 8, 10]
#   Sum: 30

sum =
  1..5
  |> Enum.map(fn n -> n * 2 end)
  |> ???   # espiar a lista dobrada com o label "doubled"
  |> Enum.sum()

IO.puts("Sum: #{sum}")
