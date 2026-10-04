{ ... }:

{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;

    settings = {
      settings = {
        save_on_toggle = true;
        sync_on_ui_close = true;
      };
    };
  };

  programs.nixvim.keymaps =
    [
      {
        mode = "n";
        key = "<leader>ha";
        action = "<cmd>lua require('harpoon'):list():add()<CR>";
        options.desc = "Harpoon add file";
      }

      {
        mode = "n";
        key = "<leader>hh";
        action = "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<CR>";
        options.desc = "Harpoon menu";
      }
    ]
    ++ builtins.genList
    (i: {
      mode = "n";
      key = "<A-${toString (i + 1)}>";
      action = "<cmd>lua require('harpoon'):list():select(${toString (i + 1)})<CR>";
      options.desc = "Harpoon file ${toString (i + 1)}";
    })
    9;
}
