{ self, ... }:
{
  config = {
    autoGroups = {
      general = {
        clear = true;
      };
    };

    autoCmd = [
      {
        event = "VimEnter";
        command = ''
          local directory = vim.fn.isdirectory(data.file) == 1
          if directory then
            vim.cmd.cd(data.file)
            require("nvim-tree.api").tree.open()
          end
        '';
        group = "general";
        desc = "Open NvimTree when it's a Directory";
      }
      {
        event = "BufEnter";
        pattern = "*.norg";
        command = "norm zR";
        group = "general";
        desc = "Unfold when entering .norg files";
      }
      {
        event = "TermOpen";
        pattern = "*";
        command = "startinsert";
      }
      {
        event = ["BufReadPost", "BufNewFile"];
        once = true;
        command = ''
          if vim.fn.has "wsl" == 1 then
            vim.g.clipboard = {
              copy = {
                ["+"] = "win32yank.exe -i --crlf";
                ["*"] = "win32yank.exe -i --crlf";
              };
              paste = {
                ["+"] = "win32yank.exe -o --lf";
                ["*"] = "win32yank.exe -o --lf";
              };
            };
          end
          vim.opt.clipboard = "unnamedplus";
        '';
        group = "general";
        desc = "Lazy load clipboard";
      }
      {
        event = "TermOpen";
        command = ''
          vim.opt_local.relativenumber = false
          vim.opt_local.number = false
          vim.cmd "startinsert!"
        '';
        group = "general";
        desc = "Terminal Options";
      }
      {
        event = "BufReadPost";
        command = ''
          if vim.fn.line("'\"") > 1 && vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.cmd "normal! g`\""
          end
        '';
        group = "general";
        desc = "Go To The Last Cursor Position";
      }
      {
        event = "TextYankPost";
        command = ''
          require("vim.highlight").on_yank { higroup = "YankHighlight", timeout = 200 }
        '';
        group = "general";
        desc = "Highlight when yanking";
      }
      {
        event = "BufEnter";
        command = ''
          vim.opt.formatoptions:remove { "c", "r", "o" }
        '';
        group = "general";
        desc = "Disable New Line Comment";
      }
      {
        event = "FileType";
        pattern = ["c", "cpp", "py", "java", "cs"];
        command = ''
          vim.bo.shiftwidth = 4
        '';
        group = "general";
        desc = "Set shiftwidth to 4 in these filetypes";
      }
      {
        event = "FocusGained";
        command = ''
          vim.cmd "checktime"
        '';
        group = "general";
        desc = "Update file when there are changes";
      }
      {
        event = "VimResized";
        command = ''
          vim.cmd "wincmd ="
        '';
        group = "general";
        desc = "Equalize Splits";
      }
      {
        event = "ModeChanged";
        command = ''
          if vim.fn.getcmdtype() == "/" or vim.fn.getcmdtype() == "?" then
            vim.opt.hlsearch = true
          else
            vim.opt.hlsearch = false
          end
        '';
        group = "general";
        desc = "Highlighting matched words when searching";
      }
      {
        event = "FileType";
        pattern = ["gitcommit", "markdown", "text", "log"];
        command = ''
          vim.opt_local.wrap = true
          vim.opt_local.spell = false
        '';
        group = "general";
        desc = "Enable Wrap in these filetypes";
      }
      {
        event = "BufWritePost";
        pattern = "*.vim";
        command = ''
          vim.cmd "source <afile>"
        '';
        group = "general";
        desc = "Automatically source vim file whenever you save it";
      }
      {
        event = "BufWritePost";
        pattern = "~/.config/nvim/lua/theme/init.lua";
        command = ''
          vim.cmd "lua require('utils').CheckAndSetColorscheme()"
        '';
        group = "general";
        desc = "Watch Lua File for Changes and Update Colorscheme";
      }
    ];
  };
}

