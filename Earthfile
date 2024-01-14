VERSION 0.7

ARG MIX_ENV=test

deps:
  ARG ELIXIR=1.16.0
  ARG OTP=26.1.2
  FROM hexpm/elixir:${ELIXIR}-erlang-${OTP}-alpine-3.17.5
  RUN apk add --no-cache build-base git
  WORKDIR /src
  RUN mix local.rebar --force
  RUN mix local.hex --force
  COPY mix.exs mix.lock ./
  COPY --dir lib .
  RUN mix deps.get
  RUN mix deps.compile --force
  RUN mix compile
  SAVE ARTIFACT /src/_build AS LOCAL _build
  SAVE ARTIFACT /src/deps AS LOCAL deps

ci:
  FROM +deps
  COPY .formatter.exs .
  RUN mix clean
  RUN mix compile --warning-as-errors
  RUN mix format --check-formatted
  RUN mix credo --strict

test:
  FROM +deps
  COPY mix.exs mix.lock ./
  COPY --dir lib ./
  RUN mix test

release:
  FROM +deps
  ENV MIX_ENV=prod
  RUN apk add xz
  RUN wget -q https://ziglang.org/builds/zig-linux-x86_64-0.11.0.tar.xz
  RUN tar Jxvf zig-linux-x86_64-*.tar.xz
  RUN mkdir -p ~/.local/bin
  RUN mv zig-linux-x86_64-*/ ~/.local/bin/zig
  COPY mix.exs ./
  COPY --dir lib priv ./
  RUN PATH="${PATH}:${HOME}/.local/bin/zig" mix release
  SAVE ARTIFACT /src/burrito_out/exlings_linux /app/exlings AS LOCAL release

docker:
  FROM alpine:3.17.5
  WORKDIR /app
  RUN chown nobody /app
  USER nobody
  COPY +release/app/exlings .
  CMD ["./exlings"]
  ARG GITHUB_REPO="zoedsoupe/exlings"
  SAVE IMAGE --push ghcr.io/$GITHUB_REPO:prod
