{ ... }:

{
  programs.nixvim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    opts = {
      number = true;
      relativenumber = true;

      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;

      smartindent = true;

      ignorecase = true;
      smartcase = true;

      termguicolors = true;

      cursorline = true;
      signcolumn = "yes";

      splitright = true;
      splitbelow = true;

      undofile = true;

      updatetime = 250;

      scrolloff = 8;

      colorcolumn = "79";

      mouse = "";
    };

    colorschemes.catppuccin = {
      enable = true;

      settings = {
        flavour = "mocha";
      };
    };

  };
}