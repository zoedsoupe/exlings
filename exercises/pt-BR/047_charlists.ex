# Charlists vs Strings
#
# Elixir tem DUAS formas de escrever texto, e elas são bem
# diferentes por baixo dos panos:
#
#   ~c"hello"  # uma charlist: uma LISTA de codepoints, [104, 101, 108, 108, 111]
#   "hello"    # uma string: um BINARY UTF-8
#
# Confira você mesmo:
#   is_list(~c"hello")    # true
#   is_binary("hello")    # true
#
# Código Elixir antigo (e Erlang!) escreve charlists com aspas
# simples: 'hello'. Essa sintaxe foi descontinuada, use o sigil ~c
# no lugar. Sigils ganham exercícios próprios mais adiante.
#
# Quando você precisa de charlists?
# - Ao chamar bibliotecas Erlang, que falam charlists
# - Fora isso, quase nunca: use strings no seu próprio código Elixir
#
# Convertendo entre as duas:
#   to_string(~c"hello")   # "hello"
#   to_charlist("hello")   # ~c"hello"
#
# Sua tarefa:
# Converta a charlist para string, depois converta de volta

charlist = ~c"hello"

string = ???              # Converta a charlist para string
back = to_charlist(???)   # Converta a string de volta para charlist

IO.puts("String: #{string}")
IO.puts("Length: #{length(back)}")
IO.puts("Is list? #{is_list(charlist)}")
