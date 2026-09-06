{ lib, ... }:

{
  programs.nixvim.keymaps =
    [
      # == Telescope ==
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
        options.desc = "Find files";
      }

      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>Telescope live_grep<CR>";
        options.desc = "Live grep";
      }

      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope buffers<CR>";
        options.desc = "Find buffers";
      }

      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>Telescope oldfiles<CR>";
        options.desc = "Recent files";
      }

      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>Telescope help_tags<CR>";
        options.desc = "Search help";
      }

      {
        mode = "n";
        key = "<leader>fk";
        action = "<cmd>Telescope keymaps<CR>";
        options.desc = "Search keymaps";
      }

      {
        mode = "n";
        key = "<leader>fc";
        action = "<cmd>Telescope commands<CR>";
        options.desc = "Search commands";
      }

      {
        mode = "n";
        key = "<leader>ft";
        action = "<cmd>Telescope git_files<CR>";
        options.desc = "Git files";
      }

      # == Neo-Tree ==
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>Neotree toggle<CR>";

        options.desc = "Toggle file explorer";
      }

      {
        mode = "n";
        key = "<leader>o";
        action = "<cmd>Neotree focus<CR>";

        options.desc = "Focus file explorer";
      }

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
    
}