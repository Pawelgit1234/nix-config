{ pkgs, ... }:

{
  home.username = "ish";
  home.homeDirectory = "/home/ish";
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
