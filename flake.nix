{
  description = "My (Alice) configuration of NixOS via Flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    # Prevents home-manager from desyncronizing with nix
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { ... }@inputs:{
    nixosConfigurations = {
      okabe = mkSystem ./hosts/okabe/configuration.nix; # Desktop #

      # TODO: implement an iso for installaion of nixos.
      # liveiso = mkSystem ./hosts/liveiso/configuration.nix;
      # TODO: implement an iso for the configuration of Yubikey's and GPG keys.
      # yubicoiso = mkSystem ./hosts/yubicoiso/configuration.nix;
    };

  };
}