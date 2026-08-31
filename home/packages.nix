{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    fzf
    zoxide
    fastfetch
    neovim
  ];
}