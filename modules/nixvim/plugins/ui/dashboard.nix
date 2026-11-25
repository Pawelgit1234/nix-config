{ ... }:

{
  programs.nixvim.plugins.dashboard = {
    enable = true;

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
            key = "f";
          }
          {
            action = "Telescope oldfiles";
            desc = "Recent Files";
            key = "r";
          }
          {
            action = "qa";
            desc = "Quit";
            key = "q";
          }
        ];

        footer = [" Made by Pawelgit1234"];

        vertical_center = true;
      };
    };
  };
}
