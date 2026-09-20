{ lib, ... }:

{
  programs.nixvim.keymaps =
    [
      # == Telescope ==
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
        options.desc = "Find files";
      }

      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>Telescope live_grep<CR>";
        options.desc = "Live grep";
      }

      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope buffers<CR>";
        options.desc = "Find buffers";
      }

      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>Telescope oldfiles<CR>";
        options.desc = "Recent files";
      }

      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>Telescope help_tags<CR>";
        options.desc = "Search help";
      }

      {
        mode = "n";
        key = "<leader>fk";
        action = "<cmd>Telescope keymaps<CR>";
        options.desc = "Search keymaps";
      }

      {
        mode = "n";
        key = "<leader>fc";
        action = "<cmd>Telescope commands<CR>";
        options.desc = "Search commands";
      }

      {
        mode = "n";
        key = "<leader>ft";
        action = "<cmd>Telescope git_files<CR>";
        options.desc = "Git files";
      }

      # == Neo-Tree ==
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>Neotree toggle<CR>";

        options.desc = "Toggle file explorer";
      }

      {
        mode = "n";
        key = "<leader>o";
        action = "<cmd>Neotree focus<CR>";

        options.desc = "Focus file explorer";
      }

      # == Tree-Sitter ==
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

      # == Todo-Comments ==
      {
        mode = "n";
        key = "]t";
        action = "<cmd>lua require('todo-comments').jump_next()<CR>";
        options.desc = "Next todo comment";
      }

      {
        mode = "n";
        key = "[t";
        action = "<cmd>lua require('todo-comments').jump_prev()<CR>";
        options.desc = "Previous todo comment";
      }

      # == LSP ==
      {
        mode = "n";
        key = "gd";
        action = "<cmd>lua vim.lsp.buf.definition()<CR>";
        options.desc = "Go to definition";
      }

      {
        mode = "n";
        key = "gD";
        action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
        options.desc = "Go to declaration";
      }

      {
        mode = "n";
        key = "gr";
        action = "<cmd>lua vim.lsp.buf.references()<CR>";
        options.desc = "Show references";
      }

      {
        mode = "n";
        key = "gi";
        action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
        options.desc = "Go to implementation";
      }

      {
        mode = "n";
        key = "K";
        action = "<cmd>lua vim.lsp.buf.hover()<CR>";
        options.desc = "Show documentation";
      }

      {
        mode = "n";
        key = "<C-k>";
        action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
        options.desc = "Show signature help";
      }

      {
        mode = "n";
        key = "<leader>rn";
        action = "<cmd>lua vim.lsp.buf.rename()<CR>";
        options.desc = "Rename symbol";
      }

      {
        mode = [ "n" "v" ];
        key = "<leader>ca";
        action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
        options.desc = "Code action";
      }

      # LSP Diagnostics
      {
        mode = "n";
        key = "<leader>d";
        action = "<cmd>lua vim.diagnostic.open_float()<CR>";
        options.desc = "Show diagnostic";
      }

      {
        mode = "n";
        key = "]d";
        action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
        options.desc = "Next diagnostic";
      }

      {
        mode = "n";
        key = "[d";
        action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
        options.desc = "Previous diagnostic";
      }

      {
        mode = "n";
        key = "<leader>q";
        action = "<cmd>lua vim.diagnostic.setloclist()<CR>";
        options.desc = "Diagnostics list";
      }

      # == Conform ==
      {
        mode = [ "n" "v" ];
        key = "<leader>F";
        action = "<cmd>lua require('conform').format({ async = true, lsp_format = 'fallback' })<CR>";
        options.desc = "Format buffer";
      }

      # == Trouble ==
      {
        mode = "n";
        key = "<leader>x";
        action = "<cmd>Trouble diagnostics toggle<CR>";
        options.desc = "Toggle diagnostics";
      }

      # == Flash ==
      {
        mode = [ "n" "x" "o" ];
        key = "s";
        action = "<cmd>lua require('flash').jump()<CR>";
        options.desc = "Flash jump";
      }

      {
        mode = [ "n" "x" "o" ];
        key = "S";
        action = "<cmd>lua require('flash').treesitter()<CR>";
        options.desc = "Flash Treesitter";
      }

      # == Bufferline ==
      {
        mode = "n";
        key = "<S-h>";
        action = "<cmd>BufferLineCyclePrev<CR>";
        options.desc = "Previous buffer";
      }

      {
        mode = "n";
        key = "<S-l>";
        action = "<cmd>BufferLineCycleNext<CR>";
        options.desc = "Next buffer";
      }

      {
        mode = "n";
        key = "<C-,>";
        action = "<cmd>BufferLineMovePrev<CR>";
        options.desc = "Move buffer left";
      }

      {
        mode = "n";
        key = "<C-.>";
        action = "<cmd>BufferLineMoveNext<CR>";
        options.desc = "Move buffer right";
      }

      {
        mode = "n";
        key = "<leader>bx";
        action = "<cmd>bdelete<CR>";
        options.desc = "Close buffer";
      }

      {
        mode = "n";
        key = "<leader>bp";
        action = "<cmd>BufferLinePick<CR>";
        options.desc = "Pick buffer";
      }

      {
        mode = "n";
        key = "<leader>bc";
        action = "<cmd>BufferLinePickClose<CR>";
        options.desc = "Pick buffer to close";
      }
    ]
    ++ builtins.genList
      (i: {
        mode = "n";
        key = "<A-${toString (i + 1)}>";
        action = "<cmd>BufferLineGoToBuffer ${toString (i + 1)}<CR>";
        options.desc = "Go to buffer ${toString (i + 1)}";
      })
      9

    ++ [  # == Harpoon ==
      {
        mode = "n";
        key = "<leader>ha";
        action = "<cmd>lua require('harpoon'):list():add()<CR>";
        options.desc = "Harpoon add file";
      }

      {
        mode = "n";
        key = "<leader>hh";
        action = "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<CR>";
        options.desc = "Harpoon menu";
      }

    ]
    ++ builtins.genList
      (i: {
        mode = "n";
        key = "<leader>${toString (i + 1)}";
        action = "<cmd>lua require('harpoon'):list():select(${toString (i + 1)})<CR>";
        options.desc = "Harpoon file ${toString (i + 1)}";
      })
      9;
    
}
