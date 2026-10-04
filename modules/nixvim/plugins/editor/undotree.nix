{ ... }:

{
  programs.nixvim.plugins.undotree = {
    enable = true;

    settings = {
      WindowLayout = 2;
      SplitWidth = 30;
      DiffAutoOpen = 1;
      SetFocusWhenToggle = 1;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<CR>";
      options.desc = "Toggle undo tree";
    }
  ];
}
