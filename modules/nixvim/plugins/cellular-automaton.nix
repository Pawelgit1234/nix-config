{ pkgs, ... }:

{
  programs.nixvim = {
    extraPlugins = [
      pkgs.vimPlugins.cellular-automaton-nvim
    ];
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>cm";
      action = "<cmd>CellularAutomaton make_it_rain<CR>";
      options.desc = "Make it rain";
    }

    {
      mode = "n";
      key = "<leader>cg";
      action = "<cmd>CellularAutomaton game_of_life<CR>";
      options.desc = "Game of life";
    }
  ];
}
