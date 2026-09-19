{ ... }:

{
  programs.nixvim.plugins.obsidian = {
    enable = true;

    settings = {
      legacy_commands = false;


      workspaces = [
        {
          name = "knowledge";
          path = ".";
        }
      ];

      ui.enable = true;

      picker.name = "telescope.nvim";
    };
  };
}