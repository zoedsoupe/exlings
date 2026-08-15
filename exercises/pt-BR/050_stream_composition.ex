# Composição de Streams
#
# Chamadas encadeadas do Enum criam uma lista intermediária a CADA
# passo:
#
#   1..100
#   |> Enum.map(fn n -> n * n end)         # lista de 100
#   |> Enum.filter(fn n -> rem(n, 2) == 0 end)  # outra lista
#   |> Enum.take(5)                        # percorre de novo
#
# Streams, em vez disso, se compõem. Cada passo do Stream embrulha
# o anterior, e tudo roda em uma ÚNICA passagem quando uma função
# do Enum finalmente consome o pipeline:
#
#   1..100
#   |> Stream.map(fn n -> n * n end)           # nada de trabalho ainda
#   |> Stream.filter(fn n -> rem(n, 2) == 0 end)  # ainda nada
#   |> Enum.take(5)                          # agora flui!
#
# Vantagens:
# - Sem listas intermediárias (menos memória, menos lixo)
# - take(5) para cedo: elementos depois do 5º que satisfaz o filtro
#   nem chegam a ser elevados ao quadrado
#
# Sua tarefa:
# O map e o take já estão ligados. Adicione o passo de filter para
# que só quadrados pares passem

result =
  1..100
  |> Stream.map(fn n -> n * n end)
  |> Stream.filter(???)  # Mantenha apenas os números pares
  |> Enum.take(5)

IO.puts("First 5 even squares: #{inspect(result)}")
