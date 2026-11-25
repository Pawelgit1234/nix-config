{ pkgs, ... }:

{
  home.username = "jim";
  home.homeDirectory = "/home/jim";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    jdk
    maven

    jetbrains-mono
    nerd-fonts.jetbrains-mono

    tree
    fzf
    zoxide
    ripgrep
    fd
    fastfetch
    usql
    p7zip
    yt-dlp
    htop
    btop

    nmap

    uv
    ruff

    rustc
    cargo

    rustfmt
    prettier
    clang-tools
  ];

  imports = [
    ../../modules/alacritty.nix
    ../../modules/zsh
    ../../modules/tmux.nix
    ../../modules/nixvim
  ];
}
