{ config, pkgs, lib, ... }:

let
  username =  "gavin";
in {
  users.users."${username}" = {
    description = "${username}";
    home = "/Users/${username}";
    name = "${username}";
    shell = pkgs.zsh;
    packages = [
      pkgs.zsh
      pkgs.gcc
      pkgs.git
      pkgs.gnupg
    ];
  };
}
