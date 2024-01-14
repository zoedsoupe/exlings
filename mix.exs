defmodule Exlings.MixProject do
  use Mix.Project

  def project do
    [
      app: :exlings,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases(),
      elixirc_path: paths(Mix.env())
    ]
  end

  defp paths(:dev), do: ["lib", "exercises"]
  defp paths(_), do: ["lib"]

  def application do
    [
      mod: {Exlings.Application, []},
      extra_applications: [:logger]
    ]
  end

  def releases do
    [
      exlings: [
        steps: [:assemble, &Burrito.wrap/1],
        cookie: Base.url_encode64(:crypto.strong_rand_bytes(40)),
        burrito: [
          targets: [
            # macos: [os: :darwin, cpu: :x86_64],
            macos_m1: [os: :darwin, cpu: :aarch64],
            linux: [os: :linux, cpu: :x86_64]
            # windows: [os: :windows, cpu: :x86_64]
          ],
          debug: Mix.env() != :prod
        ]
      ]
    ]
  end

  defp deps do
    [
      {:owl, "~> 0.6"},
      {:nexus_cli, github: "zoedsoupe/nexus"},
      {:file_system, "~> 0.2 or ~> 0.3"},
      {:burrito, github: "burrito-elixir/burrito", ref: "HEAD"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end
end
