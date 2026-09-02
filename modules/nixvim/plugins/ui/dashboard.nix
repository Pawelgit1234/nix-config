{ ... }:

{
  programs.nixvim.plugins.dashboard = {
    enable = true;

    lazyLoad.settings = {
        event = "VimEnter";
    };

    settings = {
      theme = "doom";

      config = {
        header = [
          "  ███▄    █  ▄▄▄██▀▀▀▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ "
          "  ██ ▀█   █    ▒██  ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ "
          " ▓██  ▀█ ██▒   ░██  ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ "
          " ▓██▒  ▐▌██▒▓██▄██▓ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  "
          " ▒██░   ▓██░ ▓███▒  ░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ "
          " ░ ▒░   ▒ ▒  ▒▓▒▒░  ░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ "
          " ░ ░░   ░ ▒░ ▒ ░▒░    ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ "
          "    ░   ░ ░  ░ ░ ░  ░ ░ ░ ▒       ░░   ▒ ░░      ░    "
          "          ░  ░   ░      ░ ░        ░   ░         ░    "
          "                                  ░                   "
          ""
          ""
        ];

        center = [
          {
            action = "Telescope find_files";
            desc = "Find File";
            icon = "   ";
            key = "f";
          }
          {
            action = "Telescope oldfiles";
            desc = "Recent Files";
            icon = "   ";
            key = "r";
          }
          {
            action = "qa";
            desc = "Quit";
            icon = "󰩈   ";
            key = "q";
          }
        ];

        footer = [" Made by Pawelgit1234/Jim"];

        vertical_center = true;
      };
    };
  };
}