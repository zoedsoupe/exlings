# Funções Genéricas com Behaviours
#
# Um behaviour é um CONTRATO: uma lista de callbacks que um módulo
# promete implementar. Você o define com @callback:
#
#   defmodule Storage do
#     @callback save(String.t()) :: :ok
#     @callback load() :: {:ok, String.t()} | :error
#   end
#
# Um módulo adere ao contrato com @behaviour e implementa cada
# callback (marque-os com @impl true para o compilador te ajudar):
#
#   defmodule NullStorage do
#     @behaviour Storage
#
#     @impl true
#     def save(_data), do: :ok
#
#     @impl true
#     def load(), do: :error
#   end
#
# A recompensa é código GENÉRICO: uma função que recebe o próprio
# módulo como argumento e chama o contrato, sem saber qual
# implementação recebeu:
#
#   def greet(greeter_module, name) do
#     greeter_module.greeting_for(name)
#   end
#
# Módulos são apenas átomos, então você pode passá-los por aí e
# chamar funções neles através de uma variável. Isso é o design
# "contrato primeiro": defina os callbacks, escreva a lógica
# genérica contra eles, e depois encaixe qualquer implementação
# que honre o contrato.
#
# Sua tarefa:
# Um behaviour Encoder e duas implementações já estão ligados.
# Complete a declaração do @callback e a função genérica emit/2.
# Saída esperada:
#
#   Query: name=ana&lang=elixir
#   CSV:   ana,elixir

defmodule Encoder do
  # O contrato: um callback que transforma pares chave/valor em string
  @callback ???
end

defmodule QueryEncoder do
  @behaviour Encoder

  @impl true
  def encode(pairs) do
    pairs
    |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
    |> Enum.join("&")
  end
end

defmodule CsvEncoder do
  @behaviour Encoder

  @impl true
  def encode(pairs) do
    pairs
    |> Enum.map(fn {_key, value} -> value end)
    |> Enum.join(",")
  end
end

# Genérico: funciona com QUALQUER módulo que implemente o contrato Encoder
defmodule Emitter do
  def emit(encoder, pairs) do
    ???(pairs)
  end
end

data = [name: "ana", lang: "elixir"]

IO.puts("Query: #{Emitter.emit(QueryEncoder, data)}")
IO.puts("CSV:   #{Emitter.emit(CsvEncoder, data)}")
