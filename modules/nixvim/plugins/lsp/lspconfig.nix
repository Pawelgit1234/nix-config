{ ... }:

{
  programs.nixvim.plugins.lsp.enable = true;

  programs.nixvim.lsp.servers = {
    # Python
    ruff.enable = true;
    ty.enable = true;

    # Rust
    rust_analyzer.enable = true;

    # JavaScript / TypeScript
    ts_ls.enable = true;

    # HTML
    html.enable = true;

    # CSS / SCSS
    cssls.enable = true;

    # C / C++
    clangd.enable = true;
  };
}