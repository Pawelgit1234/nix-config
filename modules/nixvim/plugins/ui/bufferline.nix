{ ... }:

# numbers (у каждого таба свой номер)
# unique names (если два файла с одинаковым именем, то пишется рядом ещё и директория)
# hotkeys
#  возможность менять их местами через клавиши
#  закрыть буфер
#  перемещатся влево/вправо по буферам
#  прыгать по номерам (id)

{
  programs.nixvim.plugins.bufferline = {
    enable = true;

    lazyLoad.settings = {
      event = "UIEnter";
    };

    settings = {
      options = {
        mode = "buffers";

        separator_style = "slant";

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