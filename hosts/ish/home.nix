{ config, pkgs, ... }:

{
  home.username = "jim";
  home.homeDirectory = "/home/jim";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    tree
    fzf
    zoxide
    fastfetch
  ];

  imports = [
    ../../modules/zsh
    ../../modules/tmux.nix
    ../../modules/nixvim
  ];
}