{
  description = "My (Alice) configuration of NixOS via Flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    # Prevents desyncronizing with nixpkgs
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    # TODO: Add disko, impermanance, stylix, sops-nix, and NVF(or NixVim)
  };

  outputs = { ... }@inputs: let 
  # Boilerplate-reducing functions and helpful tools.
  myLibs = import ./libs/default.nix {inherit inputs;};
  in with myLibs; {
    # ============================================================ #
    # =================== NixOS Configurations =================== #
    nixosConfigurations = {
      okabe = mkSystem ./hosts/okabe/configuration.nix; # Desktop #

      # TODO: implement an iso for installaion of nixos.
      # liveiso = mkSystem ./hosts/liveiso/configuration.nix;
      # TODO: implement an iso for the configuration of Yubikey's and GPG keys.
      # yubicoiso = mkSystem ./hosts/yubicoiso/configuration.nix;
    };
    # ================ Home-manager Configurations =============== #
    homeConfigurations = {

    };

    nixosModules.default = ./modules/default.nix;
    homeManagerModules.default = ./home/default.nix;
  };
}
