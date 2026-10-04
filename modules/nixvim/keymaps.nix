{ ... }:

{
  programs.nixvim.keymaps =
    [
      # == Clipboard ==
      {
        mode = "v";
        key = "<C-c>";
        action = "\"+y";
        options.silent = true;
      }
      {
        mode = "i";
        key = "<C-v>";
        action = "<C-r>+";
        options.silent = true;
      }
    ];
}
