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
}