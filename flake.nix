{
  description = "ssg";

  inputs = {nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";};

  outputs = {
    self,
    nixpkgs,
  }: let
    allSystems = ["x86_64-linux" "aarch64-darwin"];
    # Found from
    # https://nix4noobs.com/flakes/devshells/ # Dead link lol, I will provide an updated one soon
    forAllSystems = fn:
      nixpkgs.lib.genAttrs allSystems
      (system: fn {pkgs = import nixpkgs {inherit system;};});
  in {
    devShells = forAllSystems ({pkgs}: {
      default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
            mkdocs
            python312Packages.mkdocs-material
        ];
      };
    });
  };
}
