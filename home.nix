{ config, pkgs, ... }:

{
  home.username = "jim";
  home.homeDirectory = "/home/jim";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono


    fastfetch
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "nvim";
  };

  programs.home-manager.enable = true;



  # == Alacritty ==
  programs.alacritty = {
    enable = true;

    theme = "catppuccin_mocha";

    settings = {

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