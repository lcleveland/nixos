{
  description = "NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = inputs@{ self, nixpkgs }: {
    nixosConfigurations = {
      nixos =
        nixpkgs.lib.nixosSystem {
          specialArgs = inputs;
          modules = [ ./profile/base.nix ];
        };
    };
  };
}
