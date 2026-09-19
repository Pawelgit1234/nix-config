{ ... }:

{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;

    settings = {
      settings = {
        save_on_toggle = true;
        sync_on_ui_close = true;
      };
    };
  };
}