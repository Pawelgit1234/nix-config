{ ... }:

{
  programs.nixvim.plugins.treesj = {
    enable = true;

    settings = {
      use_default_keymaps = false;
      max_join_length = 512;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>TSJToggle<CR>";
      options.desc = "Toggle split/join";
    }

    {
      mode = "v";
      key = "<leader>m";
      action = "<cmd>TSJToggle<CR>";
      options.desc = "Toggle split/join";
    }
  ];
}
