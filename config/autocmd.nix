{ opts, ... }:
{
  extraConfigLua = ''

    local fn = vim.fn

    local autocmd = vim.api.nvim_create_autocmd
    local augroup = vim.api.nvim_create_augroup

    -- General Settings
    local general = augroup("General Settings", { clear = true })


    autocmd("VimEnter", {
      callback = function(data)
        -- buffer is a directory
        local directory = vim.fn.isdirectory(data.file) == 1

        -- change to the directory
        if directory then
          vim.cmd.cd(data.file)
          -- open the tree
          require("nvim-tree.api").tree.open()
        end
      end,
      group = general,
      desc = "Open NvimTree when it's a Directory",
    })

    autocmd("BufEnter", {
      pattern = "*.norg",
      command = "norm zR",
      group = general,
      desc = "Unfold when entering .norg files",
    })

    -- Enter insert mode in terminal mode
    vim.api.nvim_create_autocmd("TermOpen", { pattern = "*", command = "startinsert" })

    -- remove this if there's an issue
    autocmd({"BufReadPost", "BufNewFile"}, {
      once = true,
      callback = function()
        if vim.fn.has "wsl" == 1 then
          -- Set a compatible clipboard manager
          vim.g.clipboard = {
            copy = {
              ["+"] = "win32yank.exe -i --crlf",
              ["*"] = "win32yank.exe -i --crlf",
            },
            paste = {
              ["+"] = "win32yank.exe -o --lf",
              ["*"] = "win32yank.exe -o --lf",
            },
          }
        end

        vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
      end,
      group = general,
      desc = "Lazy load clipboard",
    })

    autocmd("TermOpen", {
      callback = function()
        vim.opt_local.relativenumber = false
        vim.opt_local.number = false
        vim.cmd "startinsert!"
      end,
      group = general,
      desc = "Terminal Options",
    })

    autocmd("BufReadPost", {
      callback = function()
        if fn.line "'\"" > 1 and fn.line "'\"" <= fn.line "$" then
          vim.cmd 'normal! g`"'
        end
      end,
      group = general,
      desc = "Go To The Last Cursor Position",
    })

    autocmd("TextYankPost", {
      callback = function()
        require("vim.highlight").on_yank { higroup = "YankHighlight", timeout = 200 }
      end,
      group = general,
      desc = "Highlight when yanking",
    })

    autocmd("BufEnter", {
      callback = function()
        vim.opt.formatoptions:remove { "c", "r", "o" }
      end,
      group = general,
      desc = "Disable New Line Comment",
    })

    autocmd("FileType", {
      pattern = { "c", "cpp", "py", "java", "cs" },
      callback = function()
        vim.bo.shiftwidth = 4
      end,
      group = general,
      desc = "Set shiftwidth to 4 in these filetypes",
    })

    autocmd("FocusGained", {
      callback = function()
        vim.cmd "checktime"
      end,
      group = general,
      desc = "Update file when there are changes",
    })

    autocmd("VimResized", {
      callback = function()
        vim.cmd "wincmd ="
      end,
      group = general,
      desc = "Equalize Splits",
    })

    autocmd("ModeChanged", {
      callback = function()
        if fn.getcmdtype() == "/" or fn.getcmdtype() == "?" then
          vim.opt.hlsearch = true
        else
          vim.opt.hlsearch = false
        end
      end,
      group = general,
      desc = "Highlighting matched words when searching",
    })

    autocmd("FileType", {
      pattern = { "gitcommit", "markdown", "text", "log" },
      callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = false
      end,
      group = general,
      desc = "Enable Wrap in these filetypes",
    })

    autocmd("BufWritePost", {
      pattern = "*.vim",
      callback = function()
        vim.cmd "source <afile>"
      end,
      group = general,
      desc = "Automatically source vim file whenever you save it",
    })

    autocmd("BufWritePost", {
      pattern = "~/.config/nvim/lua/theme/init.lua",
      callback = function()
        vim.cmd("lua require('utils').CheckAndSetColorscheme()")
      end,
      group = general,
      desc = "Watch Lua File for Changes and Update Colorscheme",
    })


    vim.api.nvim_exec([[
      augroup WatchInitLua
        autocmd!
        autocmd BufWritePost ~/.nixconfig/dotfiles/base/nvim/lua/theme/init.lua lua vim.defer_fn(function() CheckAndSetColorscheme() end, 100)
      augroup END
    ]], false)
 '';
}

