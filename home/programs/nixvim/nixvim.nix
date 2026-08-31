{ ... }:

{
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;

    plugins = {
      telescope.enable = true;
      treesitter.enable = true;
    };
  };
}