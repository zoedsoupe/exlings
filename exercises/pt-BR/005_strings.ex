# Strings
#
# Strings são sequências de caracteres usadas para representar texto.
# Em Elixir, strings são sempre escritas entre aspas duplas.
#
# O básico de strings:
# - Escritas entre aspas duplas: "hello"
# - Podem conter qualquer texto, incluindo caracteres especiais
# - Strings em Elixir usam codificação UTF-8 (suportam caracteres internacionais!)
#
# Exemplos:
#   greeting = "Hello"
#   emoji = "👋"
#   sentence = "Learning Elixir is fun!"
#
# Concatenação de strings (juntar strings):
# - Use o operador <> para unir strings
# - Exemplo: "Hello" <> " " <> "World" resulta em "Hello World"
#
# Importante: você NÃO PODE usar o operador + com strings em Elixir!
# Ele é só para números. Use <> no lugar.
#
# Sua tarefa:
# 1. Crie uma variável 'name' com o seu nome como string
# 2. Use <> para concatenar "Hello, " com o seu nome e "!"

name = ???

greeting = "Hello, " ??? name ??? "!"

IO.puts(greeting)
