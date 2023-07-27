{
  description = "nix-darwin flake boilerplate";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    darwin.url = "github:LnL7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur.url = "github:nix-community/NUR";
  };

  outputs = inputs@{ self, nixpkgs, darwin, home-manager, nur, ... }: {
    darwinConfigurations = {
      # m1-macbook 
      "m1-macbook-pro" = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = inputs;
        modules = [ ./hosts/m1-macbook-pro.nix ];
      };
      # m2-macbook 
      "m2-macbook-pro" = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = inputs;
        modules = [ ./hosts/m2-macbook-pro.nix ];
      };
      # intel-macbook (used for CI to test updates)
      "intel-macbook" = darwin.lib.darwinSystem {
        system = "x86_64-darwin";
        specialArgs = inputs;
        modules = [ ./hosts/intel-macbook.nix ];
      };
      #"m1-macmini" = darwin.lib.darwinSystem {
      #  system = "aarch64-darwin";
      #  specialArgs = inputs;
      #  modules = [ ./hosts/m1-macmini.nix ];
      #};
    };
  };
}
