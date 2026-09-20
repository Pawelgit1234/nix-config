{ ... }:

{
  programs.nixvim.plugins.bufferline = {
    enable = true;

    lazyLoad.settings = {
      event = "UIEnter";
    };

    settings = {
      options = {
        mode = "buffers";

        always_show_bufferline = true;

        diagnostics = "nvim_lsp";

        show_buffer_close_icons = false;
        show_close_icon = false;

        numbers = "ordinal";

        offsets = [
          {
            filetype = "neo-tree";
            text = "File Explorer";
            highlight = "Directory";
            text_align = "left";
          }
        ];

      };
    };
  };
}