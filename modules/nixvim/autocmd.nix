{ ... }:

{
  programs.nixvim.autoCmd = [
    # Autosave
    {
      event = [ "CursorHold" "CursorHoldI" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if vim.bo.modified and vim.bo.buftype == "" then
              vim.cmd("silent! update")
            end
          end
          '';
      };
    }

    {
      event = [ "FocusLost" ];
      pattern = "*";
      command = "silent! wall";
    }

    # Conceal Level for Obsidian Nvim
    {
      event = [ "FileType" ];
      pattern = [ "markdown" ];
      command = "setlocal conceallevel=2";
    }

    # Autoread from disk
    {
      event = [ "FocusGained" "BufEnter" "CursorHold" "CursorHoldI" ];
      pattern = "*";
      command = "checktime";
    }
  ];
}
