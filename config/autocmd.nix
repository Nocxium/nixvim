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
        command = ''
          if vim.fn.line("'\"") > 1 && vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.cmd "normal! g`\""
          end
        '';
        group = "general";
        desc = "Go To The Last Cursor Position";
      }
    ];
  };
}

