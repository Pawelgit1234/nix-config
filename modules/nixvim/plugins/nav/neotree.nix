{ ... }:

{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    lazyLoad.settings = {
      cmd = "Neotree";
    };

    settings = {
      close_if_last_window = true;

      popup_border_style = "rounded";

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
}