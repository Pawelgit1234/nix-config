{ config, pkgs, ... }:

{
  home.username = "jim";
  home.homeDirectory = "/home/jim";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    tree
    fzf
    zoxide
    fastfetch
    yt-dlp
  ];

  imports = [
    ../../modules/alacritty.nix
    ../../modules/zsh/zsh.nix
    ../../modules/tmux.nix
    ../../modules/nixvim/nixvim.nix
  ];
}