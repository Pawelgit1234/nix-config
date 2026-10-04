{ ... }:

{
  programs.nixvim.plugins.trouble = {
    enable = true;
  };

  programs.nixvim.keymaps = 
    [
      {
        mode = "n";
        key = "<leader>x";
        action = "<cmd>Trouble diagnostics toggle<CR>";
        options.desc = "Toggle diagnostics";
      }
    ];
}
