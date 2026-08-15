# Funções do Módulo String
#
# Você já conhece strings do exercício 005. O módulo String tem
# uma API rica para trabalhar com elas. Algumas favoritas:
#
#   String.trim("  hi  ")            # "hi" (remove espaços das pontas)
#   String.upcase("hi")              # "HI"
#   String.downcase("HI")            # "hi"
#   String.split("a b c")            # ["a", "b", "c"] (divide nos espaços)
#   String.replace("a-b", "-", "+")  # "a+b"
#   String.contains?("elixir", "xi")     # true
#   String.starts_with?("elixir", "eli") # true
#   String.length("elixir")          # 6
#
# Lembre-se: strings são imutáveis! Essas funções sempre retornam
# strings NOVAS, nunca alteram a original.
#
# Como cada função recebe a string como primeiro argumento, elas
# se encaixam lindamente no pipe operator.
#
# Sua tarefa:
# Complete o pipeline: remova os espaços da string, coloque em
# maiúsculas e depois divida em palavras

words =
  "  hello elixir world  "
  |> String.trim()
  |> ???  # Coloque a string sem espaços em maiúsculas
  |> String.split()

IO.puts("Words: #{inspect(words)}")
IO.puts("Count: #{length(words)}")
