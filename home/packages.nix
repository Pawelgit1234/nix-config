{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    tree
    fzf
    zoxide
    fastfetch
  ];
}