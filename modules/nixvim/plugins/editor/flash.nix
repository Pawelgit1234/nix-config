{ ... }:

{
  programs.nixvim.plugins.flash = {
    enable = false; # disabled
  };


  # disabled
  # programs.nixvim.keymaps = 
  #   [
  #     {
  #       mode = [ "n" "x" "o" ];
  #       key = "s";
  #       action = "<cmd>lua require('flash').jump()<CR>";
  #       options.desc = "Flash jump";
  #     }

  #     {
  #       mode = [ "n" "x" "o" ];
  #       key = "S";
  #       action = "<cmd>lua require('flash').treesitter()<CR>";
  #       options.desc = "Flash Treesitter";
  #     }
  #   ];
}
