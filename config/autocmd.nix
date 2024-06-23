{ opts, ... }:
{
  config = {
    autoGroups = {
      general = {
        clear = true;
      };
    };

    autoCmd = [
      {
        event = [ "BufReadPost" ];
        callback.__raw = ''
          function()
            if vim.fn.line("'\"") > 1 && vim.fn.line("'\"") <= vim.fn.line("$") then
              vim.cmd "normal! g`\""
            end
          end
        '';
        group = "general";
        desc = "Go To The Last Cursor Position";
      }
    ];
  };
}

