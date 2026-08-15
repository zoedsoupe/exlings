# Implementando um Protocolo: String.Chars
#
# No exercício anterior você usou protocolos que o Elixir já
# implementa para tipos embutidos. Agora inverta a perspectiva:
# ensine o Elixir a transformar a SUA struct em uma string.
#
# Os protocolos em si são definidos com defprotocol. É assim que a
# definição de String.Chars aparece no próprio código-fonte do
# Elixir (simplificada):
#
#   defprotocol String.Chars do
#     def to_string(term)
#   end
#
# Um defprotocol declara as funções, mas não tem código. Cada TIPO
# fornece o código com defimpl. Aqui está (um esboço) da
# implementação para inteiros:
#
#   defimpl String.Chars, for: Integer do
#     def to_string(int), do: Integer.to_string(int)
#   end
#
# Uma vez que um defimpl existe, TODA função que passa pelo
# protocolo funciona com o seu tipo: to_string/1, interpolação
# "#{...}", e assim por diante.
#
# Sem um defimpl, a interpolação levanta:
#   price = Money.new(99, :USD)
#   "Price: #{price}"   # Protocol.UndefinedError!
#
# Uma observação sobre scripts (você viu isso com structs):
# um literal %Struct{} só funciona DEPOIS que seu módulo é
# compilado, então o código de nível superior constrói instâncias
# com uma função construtora. Dentro do defimpl a struct já está
# compilada, então casar padrão com %Money{...} funciona lá.
#
# Sua tarefa:
# 1. Diga ao defimpl para qual struct ele é
# 2. Retorne uma string no formato "AMOUNT CURRENCY", ex.: "99 USD"
#    (interpolação funciona: amount é um inteiro, currency um átomo,
#    e ambos já implementam String.Chars)
#
# Saída esperada:
#   Price: 99 USD
#   Total: 99 USD

defmodule Money do
  defstruct amount: 0, currency: :USD

  # Construtor: constrói um %Money{} de dentro do módulo,
  # onde a struct já está definida
  def new(amount, currency) do
    %Money{amount: amount, currency: currency}
  end
end

defimpl String.Chars, for: ??? do
  def to_string(%Money{amount: amount, currency: currency}) do
    ???
  end
end

price = Money.new(99, :USD)

IO.puts("Price: #{price}")
IO.puts("Total: " <> to_string(price))
