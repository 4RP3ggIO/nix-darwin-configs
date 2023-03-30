{ config, pkgs, lib, home-manager, nur, ... }:


let
  hostname = "M1Mini";
  username = "gavin";
in {
  imports = [
    ../roles/m1.nix
    ../roles/defaults.nix
    ../roles/brew.nix
    ../roles/yabai.nix
    ../roles/network.nix
    ../roles/users/${username}.nix
    ../roles/home-manager/settings.nix
  ];

  # Set home-manager configs for username
  home-manager.users.${username} = import ../roles/home-manager/user.nix;

  # Set hostname
  networking.hostName = "${hostname}";

  # Always show menu bar
  # system.defaults.NSGlobalDomain._HIHideMenuBar = lib.mkForce false;

  system.stateVersion = 4;
}