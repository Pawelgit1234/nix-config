{ ... }:

{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    highlight.enable = true;
    indent.enable = true;
    folding.enable = false;
    nixvimInjections = true;
  };

  programs.nixvim.plugins.treesitter-textobjects = {
    enable = true;

    settings = {
      select.lookahead = true;
      move.set_jumps = true;
    };
  };

}