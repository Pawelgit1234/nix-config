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

  programs.nixvim.keymaps = [
    # Treesitter textobjects: select
    {
      mode = [ "x" "o" ];
      key = "aa";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@parameter.outer', 'textobjects')<CR>";
      options.desc = "Select parameter outer";
    }

    {
      mode = [ "x" "o" ];
      key = "ia";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@parameter.inner', 'textobjects')<CR>";
      options.desc = "Select parameter inner";
    }

    {
      mode = [ "x" "o" ];
      key = "af";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@function.outer', 'textobjects')<CR>";
      options.desc = "Select function outer";
    }

    {
      mode = [ "x" "o" ];
      key = "if";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@function.inner', 'textobjects')<CR>";
      options.desc = "Select function inner";
    }

    {
      mode = [ "x" "o" ];
      key = "ac";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@class.outer', 'textobjects')<CR>";
      options.desc = "Select class outer";
    }
    {
      mode = [ "x" "o" ];
      key = "ic";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@class.inner', 'textobjects')<CR>";
      options.desc = "Select class inner";
    }

    {
      mode = [ "x" "o" ];
      key = "ai";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@conditional.outer', 'textobjects')<CR>";
      options.desc = "Select conditional outer";
    }
    {
      mode = [ "x" "o" ];
      key = "ii";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@conditional.inner', 'textobjects')<CR>";
      options.desc = "Select conditional inner";
    }

    {
      mode = [ "x" "o" ];
      key = "al";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@loop.outer', 'textobjects')<CR>";
      options.desc = "Select loop outer";
    }
    {
      mode = [ "x" "o" ];
      key = "il";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@loop.inner', 'textobjects')<CR>";
      options.desc = "Select loop inner";
    }

    {
      mode = [ "x" "o" ];
      key = "at";
      action = "<cmd>lua require('nvim-treesitter-textobjects.select').select_textobject('@comment.outer', 'textobjects')<CR>";
      options.desc = "Select comment";
    }

    # Treesitter incremental selection
    {
      mode = ["x" "n"];
      key = "<C-i>";
      action = "<cmd>lua vim.treesitter.select('parent')<CR>";
      options.desc = "Increment Treesitter selection";
    }

    {
      mode = "x";
      key = "<C-h>";
      action = "<cmd>lua vim.treesitter.select('child')<CR>";
      options.desc = "Decrement Treesitter selection";
    }

    # Treesitter textobjects: move
    {
      mode = "n";
      key = "]m";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_next_start('@function.outer', 'textobjects')<CR>";
      options.desc = "Next function start";
    }
    {
      mode = "n";
      key = "]M";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_next_end('@function.outer', 'textobjects')<CR>";
      options.desc = "Next function end";
    }
    {
      mode = "n";
      key = "[m";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_previous_start('@function.outer', 'textobjects')<CR>";
      options.desc = "Previous function start";
    }
    {
      mode = "n";
      key = "[M";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_previous_end('@function.outer', 'textobjects')<CR>";
      options.desc = "Previous function end";
    }

    {
      mode = "n";
      key = "]]";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_next_start('@class.outer', 'textobjects')<CR>";
      options.desc = "Next class start";
    }
    {
      mode = "n";
      key = "][";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_next_end('@class.outer', 'textobjects')<CR>";
      options.desc = "Next class end";
    }
    {
      mode = "n";
      key = "[[";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_previous_start('@class.outer', 'textobjects')<CR>";
      options.desc = "Previous class start";
    }
    {
      mode = "n";
      key = "[]";
      action = "<cmd>lua require('nvim-treesitter-textobjects.move').goto_previous_end('@class.outer', 'textobjects')<CR>";
      options.desc = "Previous class end";
    }

    # Treesitter textobjects: swap
    {
      mode = "n";
      key = "<leader>a";
      action = "<cmd>lua require('nvim-treesitter-textobjects.swap').swap_next('@parameter.inner')<CR>";
      options.desc = "Swap parameter forward";
    }
    {
      mode = "n";
      key = "<leader>A";
      action = "<cmd>lua require('nvim-treesitter-textobjects.swap').swap_previous('@parameter.outer')<CR>";
      options.desc = "Swap parameter backward";
    }
  ];
}
