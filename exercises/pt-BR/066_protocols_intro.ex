# Protocolos: Polimorfismo ao Estilo Elixir
#
# Você já usou protocolos sem saber! Toda vez que você escreve
# "Hello, #{name}" ou chama to_string(42), o Elixir pergunta: "como
# eu transformo ESTE tipo de valor em uma string?" A resposta mora
# em um PROTOCOLO.
#
# Um protocolo é um contrato que diz: "qualquer tipo que me
# implementa fornece estas funções." Maps e structs são sobre DADOS;
# protocolos são sobre COMPORTAMENTO compartilhado entre tipos
# diferentes.
#
# Dois protocolos que você usa o tempo todo:
#
# 1. String.Chars - converte um valor em uma string legível para
#    humanos. Usado por to_string/1 e pela interpolação "#{...}".
#    Implementado para inteiros, floats, átomos, binários...
#
#      to_string(42)      # "42"
#      to_string(:ok)     # "ok"
#      "n is #{42}"       # "n is 42"  (interpolação usa String.Chars)
#
# 2. Inspect - converte um valor em sua forma de depuração voltada
#    ao programador. Usado por inspect/1 e IO.inspect/1. Implementado
#    para (quase) tudo, incluindo listas, maps e structs:
#
#      inspect([1, 2, 3])   # "[1, 2, 3]"
#      inspect(%{a: 1})     # "%{a: 1}"
#
# Por que dois protocolos? A interpolação precisa de uma forma de
# texto NATURAL e recusa tipos que não têm uma. Tente no IEx:
#
#    "#{[1, 2, 3]}"      # levanta Protocol.UndefinedError!
#    to_string(%{a: 1})  # também levanta: maps não têm String.Chars
#
# Listas e maps são estruturas de dados, não texto, então o Elixir
# faz você pedir a visão de depuração explicitamente:
#
#    "list: #{inspect([1, 2, 3])}"   # "list: [1, 2, 3]"
#
# Sua tarefa:
# 1. Converta o inteiro em string com to_string/1 para o <> funcionar
# 2. Interpole a lista usando inspect/1 (interpolação direta levanta!)
# 3. Interpole o map da mesma forma
#
# Saída esperada:
#   Number as string: 42
#   List: [1, 2, 3]
#   User: %{name: "exlings", level: 15}

number = 42
list = [1, 2, 3]
user = %{name: "exlings", level: 15}

IO.puts("Number as string: " <> ???)
IO.puts("List: #{???}")
IO.puts("User: #{???}")
