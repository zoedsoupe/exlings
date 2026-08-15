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
    }
  }

  @doc "All translations as %{number => %{name: binary, hints: [binary]}}."
  def entries, do: @translations
end
