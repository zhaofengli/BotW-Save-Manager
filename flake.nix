{
  description = "Breath of the Wild Save Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in rec {
    packages.${system}.botw-save-manager = pkgs.callPackage ./package.nix { };
    defaultPackage.${system} = packages.${system}.botw-save-manager;
  };
}
