{
  description = "My Nix Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nixvim,
      ...
    }:
    let
      system = "x86_64-linux";

      pkgs = nixpkgs.legacyPackages.${system};

      mkHome =
        module:
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [
            nixvim.homeModules.nixvim
            module
          ];
        };
    in
    {
      homeConfigurations = {
        # main pc (ubuntu)
        jim = mkHome ./hosts/jim/home.nix;

        # iSH on iPad
        ish = mkHome ./hosts/ish/home.nix;

        # Default configuration
        default = mkHome ./hosts/jim/home.nix;
      };
    };
}