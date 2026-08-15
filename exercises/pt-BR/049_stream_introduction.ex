# Introdução ao Módulo Stream
#
# Funções do Enum são EAGER (ansiosas): processam a coleção inteira
# na hora e retornam um resultado.
#
# Funções do Stream são LAZY (preguiçosas): montam uma receita de
# trabalho, mas não fazem nada até algo consumir a stream.
#
# Compare:
#   Enum.map(1..5, fn n -> n * 2 end)     # [2, 4, 6, 8, 10] agora mesmo
#   Stream.map(1..5, fn n -> n * 2 end)   # uma stream, nada calculado
#
# Por que a preguiça importa:
# - Dá para descrever trabalho sobre coleções ENORMES sem percorrê-las
#   por completo
# - Nada executa até você realmente precisar dos valores
#
# Como tirar valores de uma stream? Qualquer função do Enum que
# retorna um resultado (e não uma stream) a consome:
#   1..1_000_000 |> Stream.map(fn n -> n * 2 end) |> Enum.take(3)
#   # [2, 4, 6], tocando apenas nos 3 primeiros elementos!
#
# Sua tarefa:
# A stream abaixo descreve dobrar um milhão de números. Consuma-a
# e pegue apenas os três primeiros resultados

doubled =
  1..1_000_000
  |> Stream.map(fn n -> n * 2 end)

first_three = ???(doubled, 3)  # Qual função do Enum pega N elementos?

IO.puts("First three: #{inspect(first_three)}")
