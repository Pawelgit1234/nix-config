{ config, pkgs, ... }:

{
  home.username = "pawel";
  home.homeDirectory = "/home/pawel";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    tree
    fzf
    zoxide
    ripgrep
    fastfetch
    yt-dlp

    uv

    ruff
    rustfmt
    prettier
    clang-tools
  ];

  imports = [
    ../../modules/zsh
    ../../modules/tmux.nix
    ../../modules/nixvim
  ];
}
