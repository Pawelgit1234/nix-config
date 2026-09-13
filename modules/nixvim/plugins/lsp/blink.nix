{ pkgs, ... }:

{
  programs.nixvim.plugins.blink-cmp = {
    enable = true;

    settings = {
      keymap = {
        preset = "super-tab";
      };

      completion = {
        documentation = {
          auto_show = true;
        };
      };

      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
      };
    };
  };
}