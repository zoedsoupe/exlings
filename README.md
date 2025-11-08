# exlings

[![ci](https://github.com/zoedsoupe/exlings/actions/workflows/ci.yml/badge.svg)](https://github.com/zoedsoupe/exlings/actions/workflows/ci.yml)

Welcome to **exlings**! This project contains a series of small exercises designed to help you learn [Elixir](https://elixir-lang.org/) through practice. By fixing and completing these exercises, you'll learn how to read and write Elixir code.

> Inspired by the brilliant [rustlings](https://github.com/rust-lang/rustlings) and [ziglings](https://github.com/ratfactor/ziglings) projects.

## Intended Audience

This project is suitable for beginners to Elixir, whether you're new to programming or coming from another language. No prior Elixir or Erlang experience is required!

Each exercise is self-contained and self-explained. However, you're encouraged to also check out these Elixir language resources for more details:

- [Elixir Official Getting Started Guide](https://hexdocs.pm/elixir/introduction.html)
- [Elixir Documentation](https://hexdocs.pm/elixir)
- [Elixir Language Reference](https://hexdocs.pm/elixir/syntax-reference.html)

Also, the [Elixir community](https://elixirforum.com) is incredibly friendly and helpful!

## Getting Started

### Prerequisites

Make sure you have Elixir installed on your system:

| name   | version     |
| ------ | ----------- |
| elixir | `>= 1.14.0` |

#### Installing Elixir

If you don't have Elixir installed yet, here are quick installation options:

**macOS:**

```sh
brew install elixir
```

**Linux (Ubuntu/Debian):**

```sh
sudo apt-get install elixir
```

**Windows:**
Download and run the installer from [elixir-lang.org](https://elixir-lang.org/install.html)

**Using asdf (recommended for managing versions):**

```sh
asdf plugin add elixir
asdf install elixir latest
```

For other installation methods, check the [official Elixir installation guide](https://elixir-lang.org/install.html).

You can verify your Elixir installation:

```sh
elixir --version
```

### Installation

Clone this repository with Git:

```sh
git clone https://github.com/zoedsoupe/exlings
cd exlings
mix deps.get
```

Now you're ready to start! Run the following to begin:

```sh
mix exlings
```

## Working with Exercises

The exercises are all placed in the `./exercises/` directory! You can edit them as you want!

### Running Exercises

To run the next pending exercise:

```sh
mix exlings
```

To run a specific exercise by number:

```sh
mix exlings 1
```

### Checking Progress

To list all exercises and see your progress:

```sh
mix exlings.list
```

### Resetting Progress

To reset your progress and start from the beginning:

```sh
mix exlings.reset
```

## What's Covered

The primary goal for exlings is to cover the core Elixir language and essential concepts from OTP.

# Learning Resources

Here are some excellent resources to complement your exlings journey:

## Official Documentation

- [Elixir Official Getting Started Guide](https://hexdocs.pm/elixir/introduction.html) - The official introduction to Elixir
- [Elixir Documentation](https://hexdocs.pm/elixir) - Complete Elixir standard library docs
- [Elixir Language Reference](https://hexdocs.pm/elixir/syntax-reference.html) - Syntax and language features
- [Elixir Changelog](https://hexdocs.pm/elixir/changelog.html) - Stay updated with language changes

## Interactive Learning

- [Exercism Elixir Track](https://exercism.org/tracks/elixir) - More exercises with mentor support
- [Elixir Koans](https://github.com/elixirkoans/elixir-koans) - Test-driven exercises
- [Codewars Elixir](https://www.codewars.com/?language=elixir) - Coding challenges

## Books

- [Elixir in Action](https://www.manning.com/books/elixir-in-action-third-edition) by Saša Jurić - Comprehensive guide
- [Programming Elixir](https://pragprog.com/titles/elixir16/) by Dave Thomas - From the Pragmatic Programmers
- [Elixir School](https://elixirschool.com/en) - Free online lessons (available in multiple languages)

## Video Content & Podcasts

- [Elixir em Foco](https://elixiremfoco.com) - Brazilian podcast about elixir
- [Elixir Casts](https://elixircasts.io/) - Free screencasts
- [Alchemist Camp](https://alchemist.camp/) - Video tutorials
- [ElixirConf talks](https://www.youtube.com/@ElixirConf) - Conference presentations

## Community

- [Elixir Forum](https://elixirforum.com) - Friendly and active community forum
- [Elixir Reddit](https://www.reddit.com/r/elixir/) - News and discussions

## Blogs & Articles

- [ElixirWeekly](https://elixirweekly.net/) - Weekly newsletter
- [Elixir Radar](http://plataformatec.com.br/elixir-radar) - Curated newsletter
- [Thinking Elixir Podcast](https://thinkingelixir.com/) - Podcast about Elixir

## Advanced Topics

- [Learn You Some Erlang](https://learnyousomeerlang.com/) - Understanding the BEAM VM
- [Elixir Patterns](http://elixirpatterns.dev/) - Common patterns and practices
- [Awesome Elixir](https://github.com/h4cc/awesome-elixir) - Curated list of libraries and resources

## Sponsors

Thanks to our amazing sponsors for supporting this project!

<p align="center">
  <a href="https://www.coderabbit.ai/?utm_source=oss&utm_medium=github&utm_campaign=zoedsoupe">
    <img src="https://victorious-bubble-f69a016683.media.strapiapp.com/Frame_1686552887_8d2a26b476.svg" alt="Coderabbit Sponsor Logo" height="80"/>
  </a>
</p>

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## Other 'lings

- [rustlings](https://github.com/rust-lang/rustlings)
- [ziglings](https://github.com/ratfactor/ziglings)
- [golings](https://github.com/mauricioabreu/golings)
