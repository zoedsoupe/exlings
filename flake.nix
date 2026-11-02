{
  description = "Exlings, like rustlings but for Elixir";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-25.11-darwin";
    beam-overlay.url = "github:zeeetech/beam-overlay";
  };

  outputs = {
    nixpkgs,
    beam-overlay,
    ...
  }: let
    inherit (nixpkgs.lib) genAttrs;
    inherit (nixpkgs.lib.systems) flakeExposed;

    forAllSystems = f:
      genAttrs flakeExposed (
        system: let
          overlays = [beam-overlay.overlays.default];
          pkgs = import nixpkgs {inherit system overlays;};
        in
          f pkgs
      );
  in {
    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShell {
        name = "exlings-dev";
        packages = let
          elixir = with pkgs; (pkgs.beam-overlay.mkToolchain {
            elixir.version = "1.20.2";
          });
        in
          with pkgs; [elixir erlang_28];
      };
    });
  };
}
