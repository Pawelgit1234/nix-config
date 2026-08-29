{ config, pkgs, ... }:

{
  home.username = "jim";
  home.homeDirectory = "/home/jim";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    ripgrep
    fd
    fzf
    bat
    eza
    jq
  ];

  programs.zsh.enable = true;
}
