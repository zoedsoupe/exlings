# Raise e Rescue
#
# Exceções são para situações EXCEPCIONAIS: coisas que não deveriam
# acontecer durante a operação normal. Você levanta uma com raise/1
# ou raise/2:
#
#   raise "something went wrong"   # levanta um RuntimeError
#   raise ArgumentError, "expected a positive number"
#
# Para capturar uma exceção, envolva o código perigoso em
# try/rescue:
#
#   try do
#     raise "boom"
#   rescue
#     e in RuntimeError -> "caught: #{e.message}"
#   end
#
# rescue casa com o TIPO da exceção usando `e in ModuleName`. A
# exceção é uma struct, e e.message guarda a mensagem. Tipos que
# você não lista continuam subindo para quem chamou:
#
#   try do
#     raise ArgumentError, "bad input"
#   rescue
#     e in ArgumentError -> "argument problem: #{e.message}"
#     e in RuntimeError  -> "runtime problem: #{e.message}"
#   end
#
# Uma palavra sobre filosofia: Elixir prefere "let it crash" (deixe
# quebrar). Processos são isolados e supervisionados, então quebrar
# é muitas vezes a escolha CERTA -- um supervisor reinicia o
# processo que falhou em um estado limpo. Use rescue apenas quando
# VOCÊ consegue fazer algo útil com a falha ali mesmo: transformá-la
# em uma mensagem amigável, usar um valor padrão, tentar de novo.
# Nunca use rescue só para esconder um bug.
#
# Sua tarefa:
# Parser.parse_positive/1 levanta ArgumentError para entradas não
# positivas. Complete a cláusula de rescue para que o programa
# imprima uma mensagem amigável em vez de quebrar.

defmodule Parser do
  def parse_positive(n) when n > 0, do: n
  def parse_positive(n), do: raise(ArgumentError, "expected a positive number, got: #{n}")
end

IO.puts("Parsed: #{Parser.parse_positive(42)}")

message =
  try do
    Parser.parse_positive(-5)
  rescue
    e in ??? -> "Rescued: #{e.message}"
  end

IO.puts(message)
