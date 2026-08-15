# Streams de Arquivos Linha a Linha
#
# File.read/1 carrega o arquivo INTEIRO para a memória de uma vez.
# Isso serve para arquivos pequenos, mas um log de 10 GB explodiria
# a sua memória.
#
# File.stream!(path) retorna uma Stream que entrega o arquivo uma
# linha por vez. Cada linha entregue mantém o "\n" final.
# Combinada com as funções de Stream e Enum que você já conhece,
# dá para processar arquivos enormes de forma preguiçosa, uma
# linha por vez:
#
#   "big.log"
#   |> File.stream!()
#   |> Stream.map(&String.trim/1)   # remove o "\n" final
#   |> Enum.count()
#
# Nada toca o disco até que uma função do Enum consuma a stream,
# exatamente como as streams sobre ranges que você construiu antes.
#
# Sua tarefa:
# Um arquivo com um número por linha já foi escrito no diretório
# temporário para você. Faça stream dele, remova os espaços de
# cada linha, converta cada uma para inteiro e some tudo. Por fim,
# apague o arquivo.

path = Path.join(System.tmp_dir!(), "exlings_058.txt")

:ok = File.write(path, "10\n20\n30\n")

total =
  path
  |> File.???()
  |> Stream.map(&String.trim/1)
  |> Stream.map(&String.to_integer/1)
  |> Enum.???()

IO.puts("Total: #{total}")

:ok = File.rm(path)
