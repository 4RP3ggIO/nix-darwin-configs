{ config, pkgs, ... }:

{
  description = "Gavin Anderson";
  name = "Gavin Anderson";
  shell = pkgs.zsh;
  packages = [
      pkgs.zsh
      pkgs.gcc
      pkgs.git
      pkgs.gnupg
  ];
}
