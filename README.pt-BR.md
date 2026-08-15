# exlings

[![ci](https://github.com/zoedsoupe/exlings/actions/workflows/ci.yml/badge.svg)](https://github.com/zoedsoupe/exlings/actions/workflows/ci.yml)

*Read this in English: [README.md](./README.md)*

Bem-vindo ao **exlings**! Este projeto contém uma série de pequenos exercícios feitos para te ensinar [Elixir](https://elixir-lang.org/) na prática. Consertando e completando esses exercícios, você aprende a ler e escrever código Elixir.

> Inspirado nos brilhantes projetos [rustlings](https://github.com/rust-lang/rustlings) e [ziglings](https://github.com/ratfactor/ziglings).

## Para quem é

Este projeto serve para iniciantes em Elixir, tanto para quem nunca programou quanto para quem vem de outra linguagem. Nenhuma experiência prévia com Elixir ou Erlang é necessária!

Cada exercício é autocontido e autoexplicado. Ainda assim, vale consultar estes recursos sobre Elixir para mais detalhes:

- [Guia oficial de primeiros passos](https://hexdocs.pm/elixir/introduction.html)
- [Documentação do Elixir](https://hexdocs.pm/elixir)
- [Referência da linguagem Elixir](https://hexdocs.pm/elixir/syntax-reference.html)

Além disso, a [comunidade Elixir](https://elixirforum.com) é incrivelmente amigável e prestativa!

## Começando

### Pré-requisitos

Certifique-se de ter o Elixir instalado no seu sistema:

| nome   | versão      |
| ------ | ----------- |
| elixir | `>= 1.14.0` |

#### Instalando o Elixir

Se você ainda não tem o Elixir instalado, aqui vão opções rápidas:

**macOS:**

```sh
brew install elixir
```

**Linux (Ubuntu/Debian):**

```sh
sudo apt-get install elixir
```

**Windows:**
Baixe e rode o instalador em [elixir-lang.org](https://elixir-lang.org/install.html)

**Usando asdf (recomendado para gerenciar versões):**

```sh
asdf plugin add elixir
asdf install elixir latest
```

Para outros métodos de instalação, veja o [guia oficial de instalação](https://elixir-lang.org/install.html).

Você pode verificar sua instalação com:

```sh
elixir --version
```

### Instalação

Clone este repositório com Git:

```sh
git clone https://github.com/zoedsoupe/exlings
cd exlings
mix deps.get
```

Agora é só começar! Rode o seguinte para iniciar:

```sh
mix exlings
```

Na primeira execução, o exlings pergunta seu idioma (English ou Português) e salva a escolha no arquivo `.progress`.

## Trabalhando com os exercícios

Os exercícios ficam no diretório `./exercises/` (ou `./exercises/pt-BR/` se você escolheu português). Edite-os como quiser!

### Rodando exercícios

Para rodar o próximo exercício pendente:

```sh
mix exlings
```

Para rodar um exercício específico pelo número:

```sh
mix exlings 1
```

Para rodar o exercício atual automaticamente a cada vez que você salvar o arquivo:

```sh
mix exlings.watch
```

Pare com Ctrl+C.

### Pedindo uma dica

Para mostrar a dica do próximo exercício pendente (ou de um específico):

```sh
mix exlings.hint
mix exlings.hint 5
```

As dicas são progressivas: cada exercício tem várias, da menos à mais
reveladora. Cada tentativa falha (ou `mix exlings.hint`) revela a
próxima, então a primeira dica instiga seu raciocínio em vez de entregar
a resposta.

### Vendo seu progresso

Para listar todos os exercícios e ver seu progresso:

```sh
mix exlings.list
```

### Zerando o progresso

Para zerar seu progresso e começar do início:

```sh
mix exlings.reset
```

Sua escolha de idioma é mantida.

## O que é coberto

O objetivo principal do exlings é cobrir o núcleo da linguagem Elixir e conceitos essenciais de OTP.

Disponível hoje (50 exercícios):

- **Básico**: imprimir, comentários, variáveis
- **Valores**: matemática, strings, átomos, booleanos, números
- **Estruturas de dados**: tuplas, listas, maps, keyword lists, structs
- **Pattern matching**: básico, padrões de lista, underscore, operador pin, aninhamento
- **Funções**: nomeadas, múltiplas cláusulas, guards, anônimas, sintaxe de capture
- **Controle de fluxo**: case, cond, if/unless, o pipe operator
- **Enum**: map, filter, reduce, each, find, all?/any?, sort, group_by
- **Recursão**: básico, recursão em listas, múltiplos casos base, acumuladores, tail calls
- **Comprehensions**: geradores, filtros, múltiplos geradores
- **Strings**: funções do módulo String, interpolação, binários, charlists
- **Ranges e streams**: ranges, avaliação preguiçosa, composição de streams

Em seguida: módulos, arquivos, tratamento de erros, protocolos, behaviours,
sigils, Mix e ExUnit, e depois processos e OTP. Veja a progressão completa em
[CONTRIBUTING.md](./CONTRIBUTING.md).

# Recursos de aprendizado

Aqui estão ótimos recursos para complementar sua jornada no exlings:

## Documentação oficial

- [Guia oficial de primeiros passos](https://hexdocs.pm/elixir/introduction.html) - A introdução oficial ao Elixir
- [Documentação do Elixir](https://hexdocs.pm/elixir) - Documentação completa da biblioteca padrão
- [Referência da linguagem Elixir](https://hexdocs.pm/elixir/syntax-reference.html) - Sintaxe e recursos da linguagem
- [Changelog do Elixir](https://hexdocs.pm/elixir/changelog.html) - Acompanhe as mudanças da linguagem

## Aprendizado interativo

- [Trilha de Elixir no Exercism](https://exercism.org/tracks/elixir) - Mais exercícios com apoio de mentores
- [Elixir Koans](https://github.com/elixirkoans/elixir-koans) - Exercícios guiados por testes
- [Codewars Elixir](https://www.codewars.com/?language=elixir) - Desafios de código

## Livros

- [Elixir in Action](https://www.manning.com/books/elixir-in-action-third-edition), de Saša Jurić - Guia completo
- [Programming Elixir](https://pragprog.com/titles/elixir16/), de Dave Thomas - Dos Pragmatic Programmers
- [Elixir School](https://elixirschool.com/pt) - Lições online gratuitas (disponível em português)

## Vídeos e podcasts

- [Elixir em Foco](https://elixiremfoco.com) - Podcast brasileiro sobre Elixir
- [Elixir Casts](https://elixircasts.io/) - Screencasts gratuitos
- [Alchemist Camp](https://alchemist.camp/) - Tutoriais em vídeo
- [Palestras da ElixirConf](https://www.youtube.com/@ElixirConf) - Apresentações de conferências

## Comunidade

- [Elixir Forum](https://elixirforum.com) - Fórum amigável e ativo da comunidade
- [Elixir no Reddit](https://www.reddit.com/r/elixir/) - Notícias e discussões

## Blogs e artigos

- [ElixirWeekly](https://elixirweekly.net/) - Newsletter semanal
- [Elixir Radar](http://plataformatec.com.br/elixir-radar) - Newsletter curada
- [Thinking Elixir Podcast](https://thinkingelixir.com/) - Podcast sobre Elixir

## Tópicos avançados

- [Learn You Some Erlang](https://learnyousomeerlang.com/) - Entendendo a VM BEAM
- [Elixir Patterns](http://elixirpatterns.dev/) - Padrões e práticas comuns
- [Awesome Elixir](https://github.com/h4cc/awesome-elixir) - Lista curada de bibliotecas e recursos

## Patrocinadores

Obrigado aos nossos patrocinadores por apoiarem este projeto!

<p align="center">
  <a href="https://www.coderabbit.ai/?utm_source=oss&utm_medium=github&utm_campaign=zoedsoupe">
    <img src="https://victorious-bubble-f69a016683.media.strapiapp.com/Frame_1686552887_8d2a26b476.svg" alt="Coderabbit Sponsor Logo" height="80"/>
  </a>
</p>

## Contribuindo

Veja [CONTRIBUTING.md](./CONTRIBUTING.md)

## Outros 'lings

- [rustlings](https://github.com/rust-lang/rustlings)
- [ziglings](https://github.com/ratfactor/ziglings)
- [golings](https://github.com/mauricioabreu/golings)
