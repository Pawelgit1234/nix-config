{ ... }:

{
  programs.nixvim.plugins.lsp.enable = true;

  programs.nixvim.lsp.servers = {
    # Python
    ruff.enable = true;
    ty.enable = true;

    # Rust
    rust_analyzer.enable = true;

    # C / C++
    clangd.enable = true;

    # Nix
    nil_ls.enable = true;

    # Lua
    lua_ls.enable = true;

    # Bash
    bashls.enable = true;

    # JavaScript / TypeScript
    ts_ls.enable = true;

    # HTML
    html.enable = true;

    # CSS / SCSS
    cssls.enable = true;

    # Java
    jdtls.enable = true;
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      options.desc = "Go to definition";
    }

    {
      mode = "n";
      key = "gD";
      action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
      options.desc = "Go to declaration";
    }

    {
      mode = "n";
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
      options.desc = "Show references";
    }

    {
      mode = "n";
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
      options.desc = "Go to implementation";
    }

    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<CR>";
      options.desc = "Show documentation";
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
      options.desc = "Show signature help";
    }

    {
      mode = "n";
      key = "<leader>rn";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      options.desc = "Rename symbol";
    }

    {
      mode = [ "n" "v" ];
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      options.desc = "Code action";
    }

    # LSP Diagnostics
    {
      mode = "n";
      key = "<leader>d";
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      options.desc = "Show diagnostic";
    }

    {
      mode = "n";
      key = "]d";
      action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
      options.desc = "Next diagnostic";
    }

    {
      mode = "n";
      key = "[d";
      action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
      options.desc = "Previous diagnostic";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>lua vim.diagnostic.setloclist()<CR>";
      options.desc = "Diagnostics list";
    }

  ];
}
