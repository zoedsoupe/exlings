# Interpolação Avançada de Strings
#
# Você já sabe que #{...} insere valores em strings:
#
#   name = "Alice"
#   "Hello, #{name}!"  # "Hello, Alice!"
#
# Mas #{...} aceita QUALQUER expressão Elixir, não só variáveis:
#
#   Math:          "2 + 2 = #{2 + 2}"
#   Function calls: "Shout: #{String.upcase("hey")}"
#   Pipes:         "First: #{["a", "b"] |> List.first()}"
#   Conditionals:  "Status: #{if true, do: "on", else: "off"}"
#
# O que a expressão retornar é convertido para string e inserido
# no lugar. Isso faz da interpolação a ferramenta ideal para montar
# saídas formatadas.
#
# Sua tarefa:
# Complete as duas interpolações abaixo. A terceira linha mostra
# uma interpolação condicional como exemplo grátis

price = 19.99
quantity = 3
name = "elixir"

IO.puts("Product: #{String.upcase(???)}")
IO.puts("Total: $#{price * ???}")
IO.puts("In stock? #{if quantity > 0, do: "yes", else: "no"}")
