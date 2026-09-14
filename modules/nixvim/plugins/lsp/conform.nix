{ ... }:

{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        # Python
        python = [ "ruff_format" ];

        # Rust
        rust = [ "rustfmt" ];

        # JavaScript / TypeScript
        javascript = [ "prettier" ];
        javascriptreact = [ "prettier" ];
        typescript = [ "prettier" ];
        typescriptreact = [ "prettier" ];

        # Web
        html = [ "prettier" ];
        css = [ "prettier" ];
        scss = [ "prettier" ];
        less = [ "prettier" ];

        # C / C++
        c = [ "clang_format" ];
        cpp = [ "clang_format" ];

        # JSON
        json = [ "prettier" ];
        jsonc = [ "prettier" ];

        # YAML
        yaml = [ "prettier" ];

        # Markdown
        markdown = [ "prettier" ];
      };

      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };

      notify_on_error = true;
    };
  };
}