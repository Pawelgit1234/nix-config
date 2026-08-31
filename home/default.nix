{ ... }:

{
  imports = [
    ./packages.nix

    ./programs/alacritty.nix
    ./programs/zsh/zsh.nix
    ./programs/tmux.nix
    ./programs/nixvim/nixvim.nix
  ];
}