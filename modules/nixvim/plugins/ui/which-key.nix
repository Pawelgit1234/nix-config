{ ... }:

{
  programs.nixvim.plugins.which-key = {
    enable = true;

    settings = {
      preset = "helix";

      delay = 500;

      spec = [
        # disabled
        # { 
        #   __unkeyed-1 = "<leader>b";
        #   group = "Buffers";
        # }
        {
          __unkeyed-2 = "<leader>f";
          group = "Telescope";
        }
      ];
    };
  };
}