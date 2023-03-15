{
  outputs = { self, nixpkgs }:
    let
      system = "aarch64-darwin";

      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShells."${system}".default = with pkgs; mkShell {
        name = "exlings";
        packages = [
          zig xz _7zz elixir_1_14
        ];
      };

      packages."${system}" = rec {
        default = exlings;
        exlings =
          let
            inherit (pkgs) beam;
            inherit (beam.interpreters) erlang;

            beamPackages = beam.packagesWith erlang;
            pname = "exlings";
            version = "0.1.0";
            src = ./.;
          in beamPackages.mixRelease {
            inherit src pname version;

            elixir = pkgs.elixir_1_14;
            nativeBuildInputs = with pkgs; [ zig xz _7zz ];
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
