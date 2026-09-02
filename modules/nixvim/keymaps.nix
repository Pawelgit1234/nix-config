{ lib, ... }:

{
  programs.nixvim.keymaps =
    [
      # == Bufferline ==
      {
        mode = "n";
        key = "<S-h>";
        action = "<cmd>BufferLineCyclePrev<CR>";
        options.desc = "Previous buffer";
      }

      {
        mode = "n";
        key = "<S-l>";
        action = "<cmd>BufferLineCycleNext<CR>";
        options.desc = "Next buffer";
      }

      {
        mode = "n";
        key = "<C-,>";
        action = "<cmd>BufferLineMovePrev<CR>";
        options.desc = "Move buffer left";
      }

      {
        mode = "n";
        key = "<C-.>";
        action = "<cmd>BufferLineMoveNext<CR>";
        options.desc = "Move buffer right";
      }

      {
        mode = "n";
        key = "<leader>bx";
        action = "<cmd>bdelete<CR>";
        options.desc = "Close buffer";
      }

      {
        mode = "n";
        key = "<leader>bp";
        action = "<cmd>BufferLinePick<CR>";
        options.desc = "Pick buffer";
      }

      {
        mode = "n";
        key = "<leader>bc";
        action = "<cmd>BufferLinePickClose<CR>";
        options.desc = "Pick buffer to close";
      }
    ]
    ++ builtins.genList
      (i: {
        mode = "n";
        key = "<A-${toString (i + 1)}>";
        action = "<cmd>BufferLineGoToBuffer ${toString (i + 1)}<CR>";
        options.desc = "Go to buffer ${toString (i + 1)}";
      })
      9;
    
    # ==  ==
}