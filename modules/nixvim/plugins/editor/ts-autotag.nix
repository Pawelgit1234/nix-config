{ ... }:

{
  programs.nixvim.plugins.ts-autotag = {
    enable = true;

    settings = {
      opts = {
        enable_close = true;
        enable_rename = true;
        enable_close_on_slash = false;
      };

      filetypes = [
        "html"
        "javascript"
        "javascriptreact"
        "typescript"
        "typescriptreact"
        "vue"
        "svelte"
        "xml"
      ];
    };
  };
}