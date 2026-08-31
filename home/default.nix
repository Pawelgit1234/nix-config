{ ... }:

{
  imports = [
    ./packages.nix

    ./programs/alacritty.nix
    ./programs/zsh/zsh.nix
    ./programs/tmux.nix
    ./programs/neovim/neovim.nix
  ];
}