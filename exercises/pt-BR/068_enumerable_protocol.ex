# O Protocolo Enumerable
#
# Enum.map, Enum.count, Enum.member?, Enum.sum... todos funcionam
# em listas, ranges, maps e streams. Como UM módulo consegue saber
# percorrer tantos tipos diferentes? O protocolo Enumerable.
#
# Enumerable tem quatro callbacks:
#
#   reduce(enumerable, acc, fun)   # percorre os elementos (o principal!)
#   count(enumerable)              # {:ok, n} ou {:error, module}
#   member?(enumerable, value)     # {:ok, bool} ou {:error, module}
#   slice(enumerable)              # {:ok, size, fun} ou {:error, module}
#
# Só o reduce/3 realmente importa: quando os outros retornam
# {:error, module}, o Enum recorre a um padrão escrito em termos de
# reduce. Implemente reduce e toda função do Enum funciona.
#
# O acumulador diz ao reduce o que fazer em seguida:
#   {:cont, acc}     continua
#   {:halt, acc}     para agora (é assim que Enum.take para cedo)
#   {:suspend, acc}  pausa (usado internamente pelo Stream)
#
# Tratar os três na mão é trabalhoso. Um atalho para structs que
# embrulham outras: delegue ao enumerável DENTRO da sua struct!
# Listas já implementam tudo corretamente, incluindo a parada:
#
#   def reduce(%Playlist{songs: songs}, acc, fun) do
#     Enumerable.reduce(songs, acc, fun)
#   end
#
# Sua tarefa:
# Uma Playlist embrulha uma lista simples de músicas. Complete sua
# implementação de Enumerable para que as funções do Enum a tratem
# como a lista interna:
# 1. count: retorne {:ok, ...} com o número de músicas
# 2. reduce: delegue à lista interna como mostrado acima
# (member?/slice já estão ligados ao fallback baseado em reduce)
#
# Saída esperada:
#   Count: 3
#   Loud: ["SONG A", "SONG B", "SONG C"]
#   Has song B? true

defmodule Playlist do
  defstruct songs: []

  def new(songs) do
    %Playlist{songs: songs}
  end
end

defimpl Enumerable, for: Playlist do
  def count(%Playlist{songs: songs}) do
    ???
  end

  def member?(_playlist, _value), do: {:error, __MODULE__}

  def slice(_playlist), do: {:error, __MODULE__}

  def reduce(%Playlist{songs: songs}, acc, fun) do
    ???
  end
end

playlist = Playlist.new(["song A", "song B", "song C"])

IO.puts("Count: #{Enum.count(playlist)}")
IO.inspect(Enum.map(playlist, &String.upcase/1), label: "Loud")
IO.puts("Has song B? #{Enum.member?(playlist, "song B")}")
