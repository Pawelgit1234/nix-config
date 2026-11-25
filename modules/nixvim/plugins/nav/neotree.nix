{ ... }:

{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    settings = {
      close_if_last_window = true;

      popup_border_style = "rounded";

      default_component_configs = {
        icon.enabled = false;

        name = {
          trailing_slash = true;
        };

        git_status.symbols = {
          added = "A";
          modified = "M";
          deleted = "D";
          renamed = "R";
          untracked = "K";
          ignored = "I";
          unstaged = "G";
          staged = "S";
          conflict = "C";
        };
      };

      filesystem = {
        follow_current_file = {
          enabled = true;
        };

        use_libuv_file_watcher = true;

        filtered_items = {
          hide_dotfiles = false;
          hide_gitignored = false;
        };
      };

      window = {
        position = "left";
        width = 30;

        mappings = {
          "h" = "close_node";
          "l" = "open";
        };
      };
    };
  };

  programs.nixvim.keymaps = [
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
  ];
}
