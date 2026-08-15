defmodule Exlings.Exercises.PtBr do
  @moduledoc """
  pt-BR translations of exercise names and hints, keyed by exercise number.

  English (in Exlings.Exercises) is canonical; entries missing here fall
  back to it, so translations can lag behind new exercises.
  """

  @translations %{
    1 => %{
      name: "Olá Mundo",
      hints: [
        "Preveja: o que IO.puts() imprime quando não recebe nenhum argumento? Teste no IEx antes de rodar.",
        "IO.puts/1 recebe um argumento, a string a ser impressa. Qual string a tarefa pede?"
      ]
    },
    2 => %{
      name: "Comentários",
      hints: [
        "Rode o arquivo e observe a saída. Qual linha impressa precisa mudar, e qual linha o Elixir deve ignorar?",
        "Um comentário começa com #. A string dentro do IO.puts precisa dizer 'Comments are awesome!'."
      ]
    },
    3 => %{
      name: "Variáveis",
      hints: [
        "Teste answer = 42 no IEx, depois digite answer. O que o = faz com uma variável?",
        "Substitua ??? pelo número 42."
      ]
    },
    4 => %{
      name: "Matemática Básica",
      hints: [
        "Preveja os valores de 10 + 5, 20 - 8 e 6 * 7 antes de rodar qualquer coisa.",
        "Os operadores que faltam são +, - e *. Associe cada um ao resultado que a saída espera."
      ]
    },
    5 => %{
      name: "Strings",
      hints: [
        "Teste \"Hello, \" <> \"world\" no IEx. O que o operador <> faz?",
        "name precisa de aspas ao redor (é uma string), e as partes da saudação são unidas com <>."
      ]
    },
    6 => %{
      name: "Átomos",
      hints: [
        "Digite :ok no IEx e depois inspecione-o. O que :ok e :success têm em comum?",
        "Um átomo começa com : seguido do seu nome, como :ok ou :success."
      ]
    },
    7 => %{
      name: "Booleanos",
      hints: [
        "Preveja o valor de true and not false antes de rodar o arquivo.",
        "Use true para a afirmação sobre Elixir ser divertido e false para a da Terra plana."
      ]
    },
    8 => %{
      name: "Números e Tipos",
      hints: [
        "No IEx, compare is_integer(42) com is_integer(42.0). O que torna os dois valores diferentes?",
        "Um inteiro não tem ponto decimal. Um float precisa ter um, como 3.14."
      ]
    },
    9 => %{
      name: "Tuplas",
      hints: [
        "Teste {1, 2} e depois {:ok, 42} no IEx. Quais símbolos constroem uma tupla?",
        "As tuplas são {:ok, 42} e {100, 200}."
      ]
    },
    10 => %{
      name: "Listas",
      hints: [
        "No IEx, verifique is_list([1, 2, 3]) e is_list({1, 2, 3}). Quais símbolos criam uma lista?",
        "As listas são [1, 2, 3] e [\"red\", \"green\", \"blue\"]."
      ]
    },
    11 => %{
      name: "Pattern Matching",
      hints: [
        "Preveja: no IEx, o que acontece quando você roda {x, y} = {5, 10} e depois digita x?",
        "O lado direito do = precisa ter o mesmo formato do padrão: a tupla {5, 10}."
      ]
    },
    12 => %{
      name: "Padrões de Lista",
      hints: [
        "No IEx, rode [head | tail] = [1, 2, 3] e inspecione as duas variáveis. O que o | separa?",
        "O lado direito precisa da lista completa [1, 2, 3, 4]."
      ]
    },
    13 => %{
      name: "Padrão Underscore",
      hints: [
        "Tente combinar {a, b} = {:error, \"oops\"} no IEx sem usar b. Qual aviso você recebe?",
        "Troque ??? por _ para dizer ao Elixir que você ignora aquele valor de propósito."
      ]
    },
    14 => %{
      name: "Operador Pin",
      hints: [
        "Preveja: depois de expected = :ok, qual é a diferença entre {^expected, v} = {:ok, 100} e {expected, v} = {:ok, 100}? Teste as duas no IEx.",
        "Fixe a variável com o pin: ^expected_status combina com o valor atual dela em vez de revinculá-la."
      ]
    },
    15 => %{
      name: "Padrões Aninhados",
      hints: [
        "O valor é {:point, {10, 20}}. Esboce um padrão com exatamente o mesmo formato, colocando variáveis onde estão os números.",
        "A tupla interna também precisa do próprio padrão: {:point, {x, y}}."
      ]
    },
    16 => %{
      name: "Funções",
      hints: [
        "O corpo de uma função retorna sua última expressão. Que expressão calcula o produto de a e b?",
        "O corpo deve ser a * b."
      ]
    },
    17 => %{
      name: "Múltiplas Cláusulas de Função",
      hints: [
        "Rode o arquivo e leia o FunctionClauseError. Qual das duas chamadas não tem cláusula correspondente?",
        "Espelhe a cláusula existente: combine {:error, reason} e interpole reason na string, como a cláusula {:ok, value} faz.",
        "def handle_result({:error, reason}), do: \"Error: \\\#{reason}\""
      ]
    },
    18 => %{
      name: "Guards",
      hints: [
        "Uma guard com when restringe quando uma cláusula combina. Qual cláusula deve combinar apenas números acima de zero?",
        "As guards são when n > 0 e when n < 0. O caso do zero não precisa de guard nenhuma. Por quê?"
      ]
    },
    19 => %{
      name: "Funções Anônimas",
      hints: [
        "Preveja o que (fn n -> n * 2 end).(21) retorna. Note o ponto antes dos argumentos.",
        "double deve ser fn n -> n * 2 end."
      ]
    },
    20 => %{
      name: "Sintaxe de Capture",
      hints: [
        "A sintaxe de capture &(...) transforma uma expressão em uma função. O que &1 representa dentro dela?",
        "add_ten = &(&1 + 10)"
      ]
    },
    21 => %{
      name: "Expressões Case",
      hints: [
        "Olhe para {:ok, value}: qual parte varia entre as chamadas? Essa parte deve ser uma variável no padrão.",
        "Os padrões são {:ok, value} e {:error, reason}."
      ]
    },
    22 => %{
      name: "Expressões Cond",
      hints: [
        "O cond escolhe a primeira condição verdadeira. Por que a última cláusula usa true?",
        "Retorne as strings \"child\", \"teenager\", \"adult\" e \"senior\" para cada ramo."
      ]
    },
    23 => %{
      name: "If e Unless",
      hints: [
        "Preveja: unless n >= 0 executa seu bloco quando a condição é o quê? Compare com o if.",
        "As condições são if n > 0 e unless n >= 0."
      ]
    },
    24 => %{
      name: "Pipe Operator",
      hints: [
        "Em um pipe, o resultado anterior vira o primeiro argumento da próxima chamada. Qual função de String deixa uma string em maiúsculas?",
        "Coloque String.upcase() no passo vazio do pipe."
      ]
    },
    25 => %{
      name: "Maps",
      hints: [
        "Experimente %{} no IEx, depois %{name: \"Bob\"}. Como você lê uma chave de volta?",
        "O map é %{name: \"Bob\", age: 25}."
      ]
    },
    26 => %{
      name: "Keyword Lists",
      hints: [
        "Inspecione [host: \"localhost\"] no IEx. Uma keyword list é uma abreviação de qual estrutura de dados?",
        "A keyword list é [host: \"localhost\", port: 5432, database: \"myapp\"]."
      ]
    },
    27 => %{
      name: "Structs",
      hints: [
        "Releia a observação sobre scripts nos comentários. Por que %Point{} só pode ser construído de dentro do módulo Point aqui?",
        "defstruct recebe uma keyword list de campos e seus valores padrão. O que defstruct x: 0, y: 0 te daria?",
        "new/2 deve retornar %Point{x: x, y: y}, e o ponto de chamada é Point.new(10, 20)."
      ]
    },
    28 => %{
      name: "Enum.map",
      hints: [
        "Enum.map aplica uma função a cada elemento. Que função transforma 1 em 2, 2 em 4?",
        "Use fn n -> n * 2 end para os números. Para as palavras, qual função de String deixa em maiúsculas? A sintaxe de captura também funciona: &String.upcase/1."
      ]
    },
    29 => %{
      name: "Enum.filter",
      hints: [
        "Enum.filter mantém os elementos para os quais a função retorna um valor truthy. Como você testa se um número é par? Experimente rem/2 no IEx.",
        "Use fn n -> rem(n, 2) == 0 end e fn w -> String.length(w) > 3 end."
      ]
    },
    30 => %{
      name: "Enum.reduce",
      hints: [
        "Enum.reduce passa um acumulador através de fn element, acc -> new_acc end. Para uma soma, qual deve ser o novo acumulador?",
        "Use fn n, acc -> n + acc end para a soma. Para o produto, qual único operador muda?",
        "Soma: fn n, acc -> n + acc end com inicial 0. Produto: fn n, acc -> n * acc end com inicial 1. Por que o produto começa em 1?"
      ]
    },
    31 => %{
      name: "Enum.each",
      hints: [
        "Enum.each é como Enum.map, mas para efeitos colaterais: retorna :ok. O que deveria acontecer para cada elemento?",
        "Use fn color -> IO.puts(\"Color: \\\#{color}\") end."
      ]
    },
    32 => %{
      name: "Enum.find",
      hints: [
        "Enum.find retorna a primeira correspondência, ou nil quando nada corresponde. Qual linha esperada mostra o caso do nil?",
        "Use fn n -> n > 10 end e fn n -> n > 100 end."
      ]
    },
    33 => %{
      name: "Enum.all? e Enum.any?",
      hints: [
        "all? pergunta 'todo elemento satisfaz isso?', any? pergunta 'pelo menos um satisfaz?'. Qual se encaixa em cada pergunta dos comentários?",
        "Use fn n -> n > 0 end para all? e fn n -> n < 0 end para any?."
      ]
    },
    34 => %{
      name: "Enum.sort",
      hints: [
        "Enum.sort/2 recebe uma função de comparação que retorna true quando o primeiro elemento deve vir antes do segundo. Para ordem decrescente, quando a deve vir antes de b?",
        "Use fn a, b -> a >= b end, ou o atalho :desc."
      ]
    },
    35 => %{
      name: "Enum.group_by",
      hints: [
        "Enum.group_by agrupa elementos sob a chave que sua função retorna. O que a função deveria retornar para um número par? E para um ímpar?",
        "Use fn n -> if rem(n, 2) == 0, do: :even, else: :odd end."
      ]
    },
    36 => %{
      name: "Recursão Básica",
      hints: [
        "Preveja: o que acontece se countdown(n) chamar countdown(n) com o mesmo n para sempre? Por que o argumento precisa diminuir a cada chamada?",
        "Cada chamada deve dar um passo em direção ao caso base 0. Qual expressão é uma unidade a menos que n?"
      ]
    },
    37 => %{
      name: "Recursão em Listas",
      hints: [
        "Teste [head | tail] = [1, 2, 3] no IEx. O que é tail, e o que sobra depois de recursar sobre ela algumas vezes?",
        "A soma de uma lista vazia é 0. O caso recursivo soma head à soma de tail."
      ]
    },
    38 => %{
      name: "Múltiplos Casos Base",
      hints: [
        "Calcule fib(2) à mão usando fib(n) = fib(n - 1) + fib(n - 2). Quais dois valores já precisam ser conhecidos para isso funcionar?",
        "Os casos base são os dois primeiros números de Fibonacci: fib(0) é 0 e fib(1) é 1."
      ]
    },
    39 => %{
      name: "Padrão do Acumulador",
      hints: [
        "Compare com o exercício 037: lá a soma era construída na volta das chamadas. Aqui o acc carrega o total parcial PARA DENTRO da próxima chamada. Qual deve ser o novo acc depois de ver head?",
        "O novo acumulador combina o acc antigo com head usando +. A chamada recursiva mantém a forma do_sum(tail, new_acc).",
        "A chamada completa é do_sum(tail, acc + head). Por que retornar acc é a jogada certa no caso base?"
      ]
    },
    40 => %{
      name: "Tail Call Optimization",
      hints: [
        "Uma chamada está em tail position quando nada acontece depois que ela retorna. Em 1 + count(tail), o que ainda fica esperando depois que a chamada recursiva termina?",
        "do_count recebe a tail e um acumulador uma unidade maior. Escreva essa chamada como a última expressão da cláusula.",
        "O corpo é do_count(tail, acc + 1). Compare o uso de memória dele com a versão sem tail call nos comentários."
      ]
    },
    41 => %{
      name: "Comprehensions Básicas",
      hints: [
        "Preveja: o que for n <- [1, 2, 3], do: n * 10 retorna? Teste no IEx antes de editar o arquivo.",
        "A expressão depois do do: roda uma vez por elemento. Qual expressão eleva n ao quadrado?"
      ]
    },
    42 => %{
      name: "Filtros em Comprehensions",
      hints: [
        "Leia for n <- [1, 2, 3, 4], n > 2, do: n * 10 e preveja o resultado. Quais elementos são pulados e onde fica a condição?",
        "O filtro vai entre o gerador e o do:. rem(n, 2) == 0 é verdadeiro exatamente para números pares."
      ]
    },
    43 => %{
      name: "Múltiplos Geradores",
      hints: [
        "Teste for x <- [1, 2], y <- [:a, :b], do: {x, y} no IEx. Quantos pares saem e por que essa quantidade?",
        "O segundo gerador segue o formato do primeiro: y <- ys. Cada x é então combinado com todos os y."
      ]
    },
    44 => %{
      name: "Funções do Módulo String",
      hints: [
        "Teste String.trim(\"  hi  \") e String.upcase(\"hi\") no IEx. O que cada uma retorna?",
        "O pipe alimenta a string sem espaços no passo que falta. Você quer ela em maiúsculas antes do split: String.upcase()."
      ]
    },
    45 => %{
      name: "Interpolação de Strings",
      hints: [
        "Teste \"2 + 2 = \#{2 + 2}\" no IEx. Que tipos de expressão são permitidos dentro de \#{}?",
        "InterpolE String.upcase(name) para o produto e price * quantity para o total."
      ]
    },
    46 => %{
      name: "Binaries e Bitstrings",
      hints: [
        "Teste <<104, 101, 108, 108, 111>> no IEx e compare com \"hello\". O que isso revela sobre strings?",
        "Case com a própria greeting. O segmento rest::binary coleta todos os bytes depois dos dois primeiros."
      ]
    },
    47 => %{
      name: "Charlists vs Strings",
      hints: [
        "Teste is_list(~c\"hi\") e is_binary(\"hi\") no IEx. Qual forma de texto é secretamente uma lista?",
        "to_string/1 transforma uma charlist em string, to_charlist/1 transforma uma string de volta em charlist."
      ]
    },
    48 => %{
      name: "Ranges",
      hints: [
        "Teste 1..5 no IEx, depois Enum.to_list(1..5). Um range é a mesma coisa que uma lista?",
        "O literal de range é 1..5. Funções do Enum aceitam ele diretamente, sem conversão."
      ]
    },
    49 => %{
      name: "Introdução a Streams",
      hints: [
        "Compare Enum.map(1..10, fn n -> n * 2 end) com Stream.map(1..10, fn n -> n * 2 end) no IEx. O que cada um retorna?",
        "Uma stream não faz nada até uma função do Enum consumi-la. Enum.take(stream, 3) extrai só três valores."
      ]
    },
    50 => %{
      name: "Composição de Streams",
      hints: [
        "Preveja: com Enum.map |> Enum.filter |> Enum.take(5), quantas listas intermediárias são criadas? O que muda quando os dois primeiros passos são chamadas do Stream?",
        "O predicado é a mesma checagem de par dos exercícios anteriores: rem(n, 2) == 0."
      ]
    },
    51 => %{
      name: "Módulos Aninhados",
      hints: [
        "Preveja: se um módulo é definido como `defmodule Arcade.HighScores`, qual você acha que é o nome completo dele visto de fora? Defina os dois módulos no IEx e tente chamar uma função do módulo interno.",
        "Um módulo aninhado é alcançado pelo nome completo com pontos: Outer.Inner.function(). O ??? na chamada é só o nome do módulo interno.",
        "Na definição com pontos, escreva o nome do módulo interno depois de Arcade., o mesmo nome usado para chamar price/0 logo abaixo."
      ]
    },
    52 => %{
      name: "Alias",
      hints: [
        "Investigue: depois de `alias Fruit.Store.Inventory`, que nome o Elixir dá ao módulo? Tente chamar count/1 no IEx usando apenas parte do nome completo.",
        "alias A.B.C disponibiliza o ÚLTIMO segmento como nome do módulo. Com `as: Inv`, o nome é exatamente o que você escolheu."
      ]
    },
    53 => %{
      name: "Import",
      hints: [
        "Preveja: o que acontece se você chamar upcase(\"beam\") sem importar nada? E depois de `import String, only: [upcase: 1]`? Tente as duas no IEx.",
        "import String, only: [...] permite chamar as funções listadas sem o prefixo String. Os ??? são exatamente os nomes da lista only: acima."
      ]
    },
    54 => %{
      name: "Funções Privadas",
      hints: [
        "Investigue: defina um módulo pequeno no IEx com uma função defp e tente chamá-la de fora do módulo. Que erro você recebe?",
        "Funções privadas usam uma palavra-chave bem parecida com def: é def com uma letra a mais. Dentro do módulo, chame helpers privados pelo nome puro, como item_count(prices).",
        "item_count/1 deve retornar quantos elementos a lista tem: a mesma chamada length/1 usada em exercícios anteriores."
      ]
    },
    55 => %{
      name: "Atributos de Módulo",
      hints: [
        "Preveja: @title é definido no topo do módulo. Dentro de title/0, como você acha que se lê esse valor de volta? Veja como welcome/0 usa @title na string.",
        "Um atributo de módulo é lido com @name em qualquer lugar do corpo do módulo, inclusive dentro de funções. title/0 deve retornar o atributo que guarda \"Star Runner\"."
      ]
    },
    56 => %{
      name: "O Módulo IO",
      hints: [
        "Preveja: se IO.write(\"a\") e IO.puts(\"b\") rodarem em sequência, o que exatamente aparece na tela, e onde o cursor termina? Tente as duas ordens no IEx.",
        "Uma das duas funções de impressão do IO adiciona quebra de linha e a outra não. O primeiro placeholder precisa da que deixa a linha aberta para o IO.puts(\"OK\") terminar.",
        "No segundo placeholder você quer a função do IO que imprime um valor na forma inspecionada, aceita a opção label: e retorna o valor sem alteração para o pipe continuar fluindo."
      ]
    },
    57 => %{
      name: "Lendo e Escrevendo Arquivos",
      hints: [
        "Investigue: no IEx, rode File.write(Path.join(System.tmp_dir!(), \"probe.txt\"), \"hi\") e observe o valor de retorno. Depois rode File.read no mesmo caminho. Que formatos têm os resultados de sucesso?",
        "Os três placeholders são funções do módulo File: uma escreve conteúdo em um caminho, uma lê o arquivo inteiro em uma string, uma apaga um arquivo. Associe cada placeholder à sua função.",
        "Os padrões ao redor dos placeholders revelam os formatos de retorno: `:ok = File.___(path, content)` para escrever, `{:ok, content} = File.___(path)` para ler e `:ok = File.___(path)` para remover."
      ]
    },
    58 => %{
      name: "Streams de Arquivos Linha a Linha",
      hints: [
        "Preveja: qual é a diferença entre o que File.read/1 retorna e o que File.stream!/1 retorna? Chame as duas em um arquivo no IEx e compare.",
        "O primeiro placeholder abre o arquivo como uma stream preguiçosa de linhas (uma função do File cujo nome termina em `!`). O segundo é a função do Enum que soma todos os números de uma coleção.",
        "Cada linha da stream ainda carrega o \"\\n\" final, por isso String.trim/1 roda antes de String.to_integer/1. Depois disso, o pipeline termina em um consumidor do Enum de uma palavra só que produz o total."
      ]
    },
    59 => %{
      name: "O Módulo Path",
      hints: [
        "Investigue: no IEx, tente Path.basename(\"data/reports/sales.csv\") e Path.extname(\"data/reports/sales.csv\"). Qual delas mantém o ponto, e qual descarta o diretório?",
        "O primeiro placeholder recebe uma LISTA de partes e as junta com o separador correto. As outras duas desmontam a string resultante: uma retorna só o nome do arquivo, a outra só a extensão.",
        "Path.join aceita argumentos separados ou uma única lista. Path.basename devolve \"sales.csv\"; a função que devolve \".csv\" (ponto incluído) é Path.extname."
      ]
    },
    60 => %{
      name: "Depuração com IO.inspect (e dbg)",
      hints: [
        "Preveja: IO.inspect/2 retorna alguma coisa. Se retornasse nil, o que aconteceria com o Enum.sum() neste pipeline? Veja no IEx o que IO.inspect([1, 2]) realmente retorna.",
        "O placeholder é um único passo de pipe que imprime a lista com o prefixo \"doubled: \" e a deixa passar intacta. Ele vive no módulo IO e aceita a opção label:.",
        "O passo que você precisa tem a forma `|> IO.inspect(label: \"doubled\")`. Repare que a saída esperada imprime a linha do inspect ANTES de \"Sum: 30\", porque o inspect dispara enquanto o pipeline executa."
      ]
    },
    61 => %{
      name: "Tuplas de Erro",
      hints: [
        "Preveja: rode Integer.parse(\"42\") e Integer.parse(\"abc\") no IEx. Que informação extra a tupla carrega além do valor em si?",
        "Você pode casar com a entrada ruim diretamente no cabeçalho da função: uma cláusula como def divide(_, 0) só roda quando o divisor é zero.",
        "A segunda cláusula calcula o resultado com div(a, b) e o embrulha: {:ok, div(a, b)}."
      ]
    },
    62 => %{
      name: "Raise e Rescue",
      hints: [
        "Rode raise ArgumentError, \"oops\" no IEx e observe o que é impresso. Que tipo de struct é uma exceção, e como você casaria apenas com esse tipo?",
        "rescue filtra pelo tipo da exceção com e in ModuleName. Qual módulo Parser.parse_positive/1 levanta para entradas inválidas?",
        "A cláusula é e in ArgumentError -> \"Rescued: \#{e.message}\"."
      ]
    },
    63 => %{
      name: "Try e After",
      hints: [
        "Preveja: no primeiro try, o bloco after roda antes ou depois de Result: 42 ser impresso? Percorra a ordem de avaliação mentalmente antes de rodar.",
        "O valor do bloco after é ignorado, mas seus efeitos colaterais ainda acontecem. A peça que falta é apenas a mensagem de limpeza impressa ali.",
        "Preencha o placeholder com a string \"Cleaning up\"."
      ]
    },
    64 => %{
      name: "Throw e Catch",
      hints: [
        "Preveja: o que a expressão try retorna se o laço terminar sem lançar nada? E o que ela retorna quando um throw acontece no meio do laço?",
        "catch casa padrões com o valor lançado. Leia a cláusula de catch existente e lance algo exatamente com esse formato.",
        "A cláusula espera {:found, n}, então lance essa tupla: throw({:found, n})."
      ]
    },
    65 => %{
      name: "A Expressão With",
      hints: [
        "Preveja: quando o lado esquerdo do <- não casa com o retorno do passo, para onde vai esse valor? Trace run.(\"abc\") passo a passo.",
        "Cada passo retorna {:ok, value}; o último padrão deve ligar o número dobrado ao nome usado no bloco do. Para o else, veja qual átomo de erro Pipeline.positive/1 retorna.",
        "Ligue com {:ok, doubled} <- e case {:error, :not_positive} na cláusula else."
      ]
    },
    66 => %{
      name: "Introdução a Protocolos",
      hints: [
        "Preveja: o que acontece no IEx se você interpolar uma lista diretamente, como \"\#{[1, 2]}\"? Tente, e depois tente inspect([1, 2]).",
        "String.Chars alimenta to_string/1 e a interpolação; Inspect alimenta inspect/1. Inteiros têm o primeiro, listas e maps só têm o segundo.",
        "Preencha to_string(number) para o <>, e inspect(list) / inspect(user) dentro das interpolações."
      ]
    },
    67 => %{
      name: "Implementando um Protocolo",
      hints: [
        "Preveja: antes de qualquer defimpl existir, que erro \"Price: \#{price}\" levanta no IEx, e qual protocolo a mensagem de erro nomeia?",
        "O defimpl precisa do seu alvo depois de for:. Qual módulo define a struct que aparece no casamento de padrão de to_string/1?",
        "Dentro do corpo, a interpolação já funciona em amount (inteiro) e currency (átomo): retorne \"\#{amount} \#{currency}\"."
      ]
    },
    68 => %{
      name: "O Protocolo Enumerable",
      hints: [
        "Investigue: no IEx, rode Enumerable.reduce([1, 2], {:cont, []}, fn x, acc -> {:cont, [x | acc]} end). O que volta, e o que isso diz sobre quem trata {:cont, ...} para listas?",
        "count/1 deve retornar uma tupla etiquetada {:ok, n}; o número de músicas é apenas o length da lista interna. Para reduce/3, delegue: chame Enumerable.reduce na lista interna.",
        "O corpo de reduce é uma linha: Enumerable.reduce(songs, acc, fun). A implementação de lista trata halt e suspend por você."
      ]
    },
    69 => %{
      name: "Behaviours",
      hints: [
        "Preveja: remova a linha @impl true de um módulo funcional (ou tente em qualquer projeto): o código ainda roda? O que o compilador diz em vez disso?",
        "Um callback parece uma typespec sem corpo: @callback nome(args) :: tipo_de_retorno(). O módulo que adota nomeia o módulo do behaviour depois de @behaviour.",
        "@callback area(struct()) :: float() em Shape, @behaviour Shape dentro de Square, @impl true acima de area/1, e o corpo é side * side."
      ]
    },
    70 => %{
      name: "Despachando Através de um Behaviour",
      hints: [
        "Investigue: no IEx, atribua module = String e chame module.upcase(\"hi\"). O que isso diz sobre o que é um nome de módulo e o que você pode fazer com ele?",
        "broadcast/3 recebe provider como uma variável comum guardando um módulo. A sintaxe provider.deliver(recipient, message) funciona exatamente como Email.deliver/2.",
        "Email retorna \"[email] to \#{recipient}: \#{message}\", Sms o mesmo com [sms], e o corpo de broadcast é provider.deliver(recipient, message)."
      ]
    },
    71 => %{
      name: "Funções Genéricas com Behaviours",
      hints: [
        "Preveja: Emitter.emit recebe um átomo de módulo como QueryEncoder na variável encoder. Quando o módulo compilar, o que QueryEncoder.encode([a: 1]) retorna? Tente chamá-la direto no IEx.",
        "Quando uma variável guarda um nome de módulo, você pode chamar uma função nela com a sintaxe de ponto de sempre: variavel.funcao(args). O typespec do @callback descreve uma função de uma lista de tuplas para uma String.t().",
        "emit/2 é uma linha só: encoder.encode(pairs)."
      ]
    },
    72 => %{
      name: "O Sigil de Regex",
      hints: [
        "Preveja: no IEx, rode Regex.run(~r/[0-9]+/, \"abc 123 def 456\"). Qual número volta, e por que esse em vez de 456?",
        "O atalho para dígito é \\d e o quantificador + significa um ou mais. Grupos nomeados se escrevem (?<nome>padrao) e {n} repete uma classe exatamente n vezes.",
        "O padrão da data tem a forma (?<year>D{4})-(?<month>D{2}) onde D é a classe de dígitos."
      ]
    },
    73 => %{
      name: "Sigils de String e de Palavras",
      hints: [
        "Preveja: o que IO.puts(~S(a\#{1 + 1}b)) imprime em comparação com IO.puts(~s(a\#{1 + 1}b))? Teste os dois no IEx antes de editar o exercício.",
        "A primeira lacuna pede o sigil minúsculo (interpolação ligada), a segunda seu gêmeo maiúsculo. Na lista de palavras, o tipo dos elementos vem de uma única letra logo após o delimitador de fechamento.",
        "Os modificadores são s (strings, o padrão), a (átomos) e c (charlists). Qual deles produz [:alpha, :beta, :gamma]?"
      ]
    },
    74 => %{
      name: "Sigils de Calendário",
      hints: [
        "Preveja: no IEx, avalie ~D[2026-08-15] == \"2026-08-15\". Por que dá false? Depois inspecione ~D[2026-08-15] e observe qual struct ele constrói.",
        "O sigil de data é ~D com colchetes no formato AAAA-MM-DD; o sigil de hora é ~T com HH:MM:SS.",
        "As duas respostas são literais de sigil únicos: o prazo usa ~D[...] com a data do comentário do cabeçalho, o alarme usa ~T[...]."
      ]
    },
    75 => %{
      name: "Introdução ao ExUnit",
      hints: [
        "Preveja: antes de mudar qualquer coisa, leia os três testes e diga em voz alta o que add(2, 3) e even?(4) precisam retornar para cada assert passar.",
        "add/2 é uma expressão única com o operador +. Para even?/1, pense no resto da divisão por 2: rem(n, 2) é 0 exatamente quando n é par.",
        "Faça even?/1 retornar o booleano rem(n, 2) == 0."
      ]
    }
  }

  @doc "All translations as %{number => %{name: binary, hints: [binary]}}."
  def entries, do: @translations
end
