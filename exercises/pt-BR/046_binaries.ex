# Binaries e Bitstrings
#
# Um binary é uma sequência bruta de bytes, escrita com <<>>:
#
#   <<1, 2, 3>>       # três bytes: 1, 2 e 3
#   <<104, 101>>      # dois bytes
#
# Aqui vem a surpresa: strings em Elixir SÃO binaries! Cada
# caractere é armazenado como seu(s) byte(s) UTF-8:
#
#   "hello" == <<104, 101, 108, 108, 111>>  # true!
#   <<104, 101, 108, 108, 111>>             # imprime como "hello"
#
# Dá para fazer casamento de padrão em binaries, assim como em listas
# ou tuplas:
#
#   <<first, rest::binary>> = "hi"
#   first  # 104 (o byte de "h")
#   rest   # "i" (o binary restante)
#
# O marcador ::binary diz "pegue todos os bytes restantes como um
# binary". Sem marcador, cada segmento casa com um único byte.
#
# Sua tarefa:
# Faça casamento de padrão na saudação para extrair o primeiro byte,
# o segundo byte e o resto da string

greeting = "hello"

<<first, second, rest::binary>> = ???  # Case com a saudação

IO.puts("First byte: #{first}")
IO.puts("Second byte: #{second}")
IO.puts("Rest: #{rest}")
