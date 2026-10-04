{ ... }:

{
  programs.nixvim.plugins.which-key = {
    enable = true;

    settings = {
      preset = "helix";

      delay = 500;

      spec = [
        {
          __unkeyed-1 = "<leader>f";
          group = "Telescope";
        }
        { 
          __unkeyed-2 = "<leader>h";
          group = "Harpoon";
        }
        # disabled
        # { 
        #   __unkeyed-3 = "<leader>b";
        #   group = "Buffers";
        # }
      ];
    };
  };
}
