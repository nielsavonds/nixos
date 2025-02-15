# flake.nix
{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in
    {
      # Mini PC configuration
      nixosConfigurations.minipc = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };
    };
}
