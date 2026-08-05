{
  description = "Exlings, like rustlings but for Elixir";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-25.11-darwin";
    elixir-overlay.url = "github:zoedsoupe/elixir-overlay";
  };

  outputs = {
    nixpkgs,
    elixir-overlay,
    ...
  }: let
    inherit (nixpkgs.lib) genAttrs;
    inherit (nixpkgs.lib.systems) flakeExposed;

    forAllSystems = f:
      genAttrs flakeExposed (
        system: let
          overlays = [elixir-overlay.overlays.default];
          pkgs = import nixpkgs {inherit system overlays;};
        in
          f pkgs
      );
  in {
    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShell {
        name = "exlings-dev";
        packages = let
          elixir = with pkgs; (elixir-with-otp erlang_28).latest;
        in
          with pkgs; [elixir erlang_28];
      };
    });
  };
}
