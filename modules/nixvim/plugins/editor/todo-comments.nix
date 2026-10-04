{ ... }:

{
  programs.nixvim.plugins.todo-comments = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "]t";
      action = "<cmd>lua require('todo-comments').jump_next()<CR>";
      options.desc = "Next todo comment";
    }

    {
      mode = "n";
      key = "[t";
      action = "<cmd>lua require('todo-comments').jump_prev()<CR>";
      options.desc = "Previous todo comment";
    }
  ];
}
