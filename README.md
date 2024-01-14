# exlings

[![build and test](https://github.com/zoedsoupe/exlings/actions/workflows/test.yml/badge.svg)](https://github.com/zoedsoupe/exlings/actions/workflows/test.yml)

> rustlings but for elixir this time

## Installing

> ⚠️ cross-platform binaries are not available yet
> I'm having some trouble with the "burrito" lib, check [this issue](https://github.com/burrito-elixir/burrito/issues/117)

For now, you can clone this repo with:
```sh
git clone https://github.com/zoedsoupe/exlings

# or with gh CLI
gh repo clone zoedsoupe/exlings
```

### Dependencies

| name | version |
| ---- | ------ |
| elixir | `>= v0.14` |


## Doing exercices

> Currently you can execute these commands into the root dir where you cloned the repo

The exercises are all placed on the `./priv/exercises/*` directory! You can edit them as you want!

To run the exercises in the recommended order while taking advantage of fast feedback loop, use the _watch_ command:

```sh
mix run --  watch
```

This command will run `exlings` in interactive mode. Every time you save a file it will verify if the code is correct.

To run the next pending exercise:

```sh
mix run -- run
```

If you want to run a single exercise:

```sh
mix run -- run 001_hello_world
```

In case you are stuck and need a hint:

```sh
mix run -- hint 001_hello_world
```

To list all exercise while checking your progress:

```sh
mix run -- list
```

To compile and run all the exercises:

```sh
mix run -- verify
```

# Learning resources

- [Elixir official Getting Started](https://hexdocs.pm/elixir/introduction.html)
- [Elixir School](https://elixirschool.com/pt)
- [Elixir official Forum](https://elixirforum.com)

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## Other 'lings

- [rustlings](https://github.com/rust-lang/rustlings)
- [ziglings](https://github.com/ratfactor/ziglings)
- [golings](https://github.com/mauricioabreu/golings)
