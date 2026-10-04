{ ... }:

{
  programs.nixvim.plugins.telescope = {
    enable = true;

    extensions.fzf-native.enable = true;

    settings = {
      defaults = {
        sorting_strategy = "ascending";
        layout_strategy = "horizontal";

        layout_config = {
          prompt_position = "top";

          horizontal = {
            width = 0.9;
            height = 0.85;
            preview_width = 0.55;
          };
        };

        path_display = [
          "smart"
        ];

        mappings = {
          i = {
            "<C-j>" = "move_selection_next";
            "<C-k>" = "move_selection_previous";
            "<C-q>" = "send_to_qflist";
          };

          n = {
            "q" = "close";
          };
        };
      };

      pickers = {
        find_files = {
          hidden = true;
          no_ignore = false;
        };

        buffers = {
          sort_lastused = true;
          ignore_current_buffer = true;
        };

        oldfiles = {
          only_cwd = true;
        };
      };
    };
  };

  programs.nixvim.keymaps = [
    # File Pickers
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find files";
    }

    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope find_files hidden=true no_ignore=true<CR>";
      options.desc = "Find ignored files";
    }

    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<CR>";
      options.desc = "Live grep";
    }

    {
      mode = "n";
      key = "<leader>fw";
      action = "<cmd>Telescope grep_string<CR>";
      options.desc = "Grep word";
    }

    # Vim Pickers
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
      key = "<leader>fc";
      action = "<cmd>Telescope commands<CR>";
      options.desc = "Search commands";
    }

    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options.desc = "Search docs";
    }

    {
      mode = "n";
      key = "<leader>fk";
      action = "<cmd>Telescope keymaps<CR>";
      options.desc = "Search keymaps";
    }

    # LSP
    {
      mode = "n";
      key = "<leader>fs";
      action = "<cmd>Telescope lsp_document_symbols<CR>";
      options.desc = "Document symbols";
    }

    {
      mode = "n";
      key = "<leader>fS";
      action = "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>";
      options.desc = "Workspace symbols";
    }

    {
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>Telescope diagnostics<CR>";
      options.desc = "Diagnostics";
    }

    # Git
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>Telescope git_files<CR>";
      options.desc = "Git files";
    }

    {
      mode = "n";
      key = "<leader>fl";
      action = "<cmd>Telescope git_commits<CR>";
      options.desc = "Git commits";
    }

    {
      mode = "n";
      key = "<leader>fm";
      action = "<cmd>Telescope git_branches<CR>";
      options.desc = "Git branches";
    }

    # Treesitter
    {
      mode = "n";
      key = "<leader>fo";
      action = "<cmd>Telescope treesitter<CR>";
      options.desc = "Treesitter symbols";
    }
  ];
}

