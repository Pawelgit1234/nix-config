{ ... }:

{
    # Autosave
    programs.nixvim.autoCmd = [
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
    ];
}