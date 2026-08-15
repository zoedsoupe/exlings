# A Expressão With
#
# Encadear funções que retornam {:ok, value} / {:error, reason}
# com case aninha fundo e rápido:
#
#   case parse(input) do
#     {:ok, n} ->
#       case positive(n) do
#         {:ok, n} -> {:ok, n * 2}
#         error -> error
#       end
#     error -> error
#   end
#
# `with` achata isso. Cada passo casa padrão com <-. Quando o casamento
# tem sucesso, o valor é ligado e o próximo passo roda. Quando FALHA,
# o `with` para e retorna o valor que não casou:
#
#   with {:ok, n} <- parse(input),
#        {:ok, n} <- positive(n) do
#     {:ok, n * 2}
#   end
#
# Uma cláusula else trata você mesmo os valores que não casaram, com
# pattern matching de novo:
#
#   with {:ok, n} <- parse(input),
#        {:ok, n} <- positive(n) do
#     {:ok, n * 2}
#   else
#     {:error, :not_a_number} -> "please type digits"
#     {:error, :not_positive} -> "number must be positive"
#   end
#
# Sua tarefa:
# Três passos do pipeline estão prontos: fazer parse de uma string,
# checar se é positiva, dobrá-la. Preencha o padrão do último passo
# para que o valor dobrado seja ligado, e complete a cláusula else
# para o erro :not_positive.

defmodule Pipeline do
  def parse(input) do
    case Integer.parse(input) do
      {n, ""} -> {:ok, n}
      _ -> {:error, :not_a_number}
    end
  end

  def positive(n) when n > 0, do: {:ok, n}
  def positive(_), do: {:error, :not_positive}

  def double(n), do: {:ok, n * 2}
end

run = fn input ->
  with {:ok, n} <- Pipeline.parse(input),
       {:ok, n} <- Pipeline.positive(n),
       {:ok, ???} <- Pipeline.double(n) do
    "Result: #{doubled}"
  else
    {:error, :not_a_number} -> "Error: not a number"
    {:error, ???} -> "Error: not positive"
  end
end

IO.puts(run.("21"))
IO.puts(run.("abc"))
IO.puts(run.("-5"))
