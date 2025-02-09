# =============================================================== #
# =                            My Libs                          = #
# =============================================================== #
{inputs}: let
  myLibs = (import ./default.nix) {inherit inputs;};
  outputs = inputs.self.outputs;
in rec {
  # ======================== Build Tools ======================== #
  mkSystem = config:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs outputs myLibs;
      };
      modules = [
        config
        outputs.nixosModules.default
      ];
    };
}