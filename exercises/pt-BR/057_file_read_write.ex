# Lendo e Escrevendo Arquivos
#
# File.write(path, content) escreve uma string em um arquivo:
#   :ok = File.write("notes.txt", "remember the milk")
# Retorna :ok em caso de sucesso ou {:error, reason} em caso de
# falha.
#
# File.read(path) lê o arquivo INTEIRO para a memória como uma
# única string. Retorna uma tupla: {:ok, content} ou
# {:error, reason}. Casar padrões nessa tupla é a forma idiomática
# de tratar os dois resultados:
#
#   case File.read("notes.txt") do
#     {:ok, content} -> IO.puts(content)
#     {:error, reason} -> IO.puts("failed: #{reason}")
#   end
#
# Onde arquivos temporários devem viver? System.tmp_dir!() retorna
# o diretório temporário do sistema operacional, e Path.join monta
# um caminho a partir de partes:
#   Path.join(System.tmp_dir!(), "my_file.txt")
#
# Limpar depois importa: File.rm(path) apaga um arquivo e retorna
# :ok (ou {:error, reason}).
#
# Sua tarefa:
# 1. Escreva a mensagem em um arquivo chamado "exlings_057.txt"
#    dentro do diretório temporário
# 2. Leia-o de volta, casando o padrão da tupla {:ok, content}
# 3. Apague o arquivo para que nada fique para trás

path = Path.join(System.tmp_dir!(), "exlings_057.txt")

:ok = File.???(path, "Hello from a file!")

{:ok, content} = File.???(path)

IO.puts("Read back: #{content}")

:ok = File.???(path)

IO.puts("Cleaned up!")
