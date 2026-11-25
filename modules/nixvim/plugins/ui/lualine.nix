{ ... }:

{
  programs.nixvim.plugins.lualine = {
    enable = false; # disabled

    settings = {
      options = {
        globalstatus = true;
      };
    };
  };
}
