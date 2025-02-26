# ============================================================================ #
# =               ######## ##          ###    ##    ## ########              = #
# =               ##       ##         ## ##   ##   ##  ##                    = #
# =               ##       ##        ##   ##  ##  ##   ##                    = #
# =               ######   ##       ##     ## #####    ######                = #
# =               ##       ##       ######### ##  ##   ##                    = #
# =               ##       ##       ##     ## ##   ##  ##                    = #
# =               ##       ######## ##     ## ##    ## ########              = #
# ============================================================================ #
{
  description = "My (Alice) configuration of NixOS via Flakes";

  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }: 
  let
    # ================================ System ================================ #
    systemSettings = {
      system = "x86_64";
      timezone = "America/Chicago";
      locale = "en_US.UTF-8";
    };
    
    # ================================= User ================================= #
    userSettings = {
      username = "alice";
      name = "Alice";
      email = "Fallengoddess777+github@gmail.com";
      theme = "everforest";
    };

  in {
    # ========================= NixOS Configurations ========================= #
    nixosConfigurations = {
      okabe = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/okabe/configuration.nix
          home-manager.nixosModules.home-manager
          stylix.nixosModules.stylix
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { 
              inherit inputs;
              inherit systemSettings;
              inherit userSettings;
            };
            home-manager.users.alice = import ./home;
          }
        ];
        specialArgs = {
          inherit systemSettings;
          inherit userSettings;
        };
      };
    };
    
    # nixosConfigurations = {
    #   okabe = mkSystem ./hosts/okabe/configuration.nix; # Desktop #
    #   # TODO: implement an iso for installaion of nixos.
    #   # liveiso = mkSystem ./hosts/liveiso/configuration.nix;
    #   # TODO: implement an iso for the configuration of Yubikey's and GPG keys.
    #   # yubicoiso = mkSystem ./hosts/yubicoiso/configuration.nix;
    # };
    # # ====================== Home-manager Configurations ===================== #
    # homeConfigurations = {
    #   # TODO: add home-manager configurations.
    # };
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
    
    # TODO: Add disko, impermanance, sops-nix, and NVF(or NixVim)
  };
}