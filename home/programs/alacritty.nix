{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;

    theme = "catppuccin_mocha";

    settings = {

      terminal.shell = {
        program = "/home/jim/.nix-profile/bin/zsh";
      };

      window = {
        padding = {
          x = 8;
          y = 8;
        };
        opacity = 1.0;
      };

      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
        size = 12.0;
      };

      cursor = {
        style = {
          shape = "Block";
          blinking = "Off";
        };
      };

    };
  };
}