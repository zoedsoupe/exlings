# Sigils de String e de Palavras (~s, ~S e ~w)
#
# O sigil ~s constrói uma string, assim como "...", mas com um
# truque: você escolhe o delimitador. Dentro de ~s(...) ou ~s[...]
# você pode usar aspas livremente, sem escapá-las:
#
#   ~s(she said "hi")     # she said "hi"
#
# O ~s minúsculo mantém interpolação e sequências de escape LIGADAS.
# O ~S maiúsculo desliga tudo (texto cru, exatamente como digitado):
#
#   name = "exlings"
#   ~s(hello #{name})     # "hello exlings"
#   ~S(hello #{name})     # "hello #{name}" (sem interpolação!)
#
# O sigil ~w constrói uma LISTA DE PALAVRAS separadas por espaço.
# Um modificador após o delimitador de fechamento escolhe o tipo
# dos elementos:
#
#   ~w(red green blue)     # ["red", "green", "blue"]  (s = strings, padrão)
#   ~w(red green blue)a    # [:red, :green, :blue]     (a = átomos)
#   ~w(red green blue)c    # ['red', 'green', 'blue']  (c = charlists)
#
# Sua tarefa:
# Substitua cada ??? por uma expressão com sigil. Saída esperada:
#
#   learning exlings is "fun"
#   learning #{tool} is "fun"
#   Atoms: [:alpha, :beta, :gamma]

tool = "exlings"

# Construa esta frase com o sigil ~s, interpolando tool:
#   learning exlings is "fun"
# (escapar essas aspas em uma string "..." seria barulhento!)
IO.puts(???)

# Imprima o MESMO template literalmente, sem interpolação e sem
# processar escapes (sigil maiúsculo):
#   learning #{tool} is "fun"
IO.puts(???)

# Construa a lista [:alpha, :beta, :gamma] com o sigil ~w e o
# modificador certo após o delimitador de fechamento
IO.inspect(???, label: "Atoms")
