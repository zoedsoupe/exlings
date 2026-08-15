# O Sigil de Regex (~r)
#
# Uma expressão regular busca padrões dentro de strings. Em Elixir
# você constrói uma com o sigil ~r:
#
#   ~r/\d+/    # uma struct Regex que casa um ou mais dígitos
#
# Por que um sigil em vez de uma string comum? Barras invertidas!
# Dentro de uma string "..." você teria que escapar cada barra
# ("\\d+") e ainda chamar Regex.compile/1. Com ~r, \d é só \d. O
# sigil também aceita outros delimitadores (~r{...}, ~r|...|), então
# um padrão cheio de / também não precisa de escape.
#
# Três formas comuns de usar um Regex:
#
#   "abc 123" =~ ~r/\d+/                    # true (casa substring?)
#   Regex.run(~r/\d+/, "abc 123")           # ["123"] (primeiro casamento)
#   Regex.run(~r/(\d+)/, "abc 123", capture: :all_but_first)
#
# Capturas nomeadas extraem pedaços de um casamento para um mapa.
# Um grupo se escreve (?<nome>padrao), e {n} repete uma classe
# exatamente n vezes:
#
#   re = ~r/(?<year>\d{4})-(?<month>\d{2})/
#   Regex.named_captures(re, "born in 1990-05")
#   # %{"year" => "1990", "month" => "05"}
#
# Sua tarefa:
# Complete os três padrões. Saída esperada:
#
#   Has digits: true
#   Order number: 42
#   Year: 2026, Month: 08

line = "order 42 ships on 2026-08-15"

# 1) a linha contém algum dígito?
IO.puts("Has digits: #{line =~ ~r/???/}")

# 2) capture o número do pedido (a primeira sequência de dígitos)
[number] = Regex.run(~r/???/, line)
IO.puts("Order number: #{number}")

# 3) capture o ano e o mês com grupos nomeados
%{"year" => year, "month" => month} = Regex.named_captures(~r/???/, line)
IO.puts("Year: #{year}, Month: #{month}")
