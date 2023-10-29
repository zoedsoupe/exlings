{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "aarch64-darwin";

    pkgs = import nixpkgs {
      inherit system;
    };

    inherit (pkgs.beam) packagesWith interpreters;
    erl = packagesWith interpreters.erlangR26;
  in {
    devShells."${system}".default = with pkgs;
      mkShell {
        name = "exlings";
        packages =
          [
            zig
            xz
            _7zz
            erl.elixir
          ]
          ++ lib.optional stdenv.isDarwin [
            darwin.apple_sdk.frameworks.CoreServices
            darwin.apple_sdk.frameworks.CoreFoundation
          ];
      };

    packages."${system}" = rec {
      default = exlings;

      docker = let
        inherit (builtins) filterSource elem;
        file_names = ["mix.exs" "mix.lock" "lib"];
        files = filterSource (p: _: elem (baseNameOf p) file_names) ./.;
        paths = with pkgs; [stdenv git xz gnupg zig elixir_1_14 files];
      in
        with pkgs;
          dockerTools.buildImage {
            name = "exlings";
            tag = "latest";
            copyToRoot = buildEnv {
              inherit paths;
              name = "exlings-root";
            };
            config = {
              Entrypoint = ["sh"];
              Env = ["MIX_ENV=prod"];
            };
            runAsRoot = ''
              mix do local.hex --force, local.rebar --force
              mix do deps.get --only $MIX_ENV, deps.compile
              mix do compile, release
            '';
          };

      exlings = let
        inherit (pkgs) beam;
        inherit (beam.interpreters) erlangR26;

        beamPackages = beam.packagesWith erlangR26;
        pname = "exlings";
        version = "0.1.0";
        src = ./.;
      in
        beamPackages.mixRelease {
          inherit src pname version;

          elixir = pkgs.elixir_1_15;
          nativeBuildInputs = with pkgs; [zig xz _7zz];
          postBuild = "mix deps.loadpaths --no-deps-check";
          mixFodDeps = beamPackages.fetchMixDeps {
            inherit src version;

            pname = "mix-deps-${pname}";
            sha256 = "hefyKmjYmf8s1JmzS2YM/WlXzC+FkfCEGRjh1a43OGo=";
          };
        };
    };
  };
}
