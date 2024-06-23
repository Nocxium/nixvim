{ self, ... }:
{
  opts = {
    backup = false;
    completeopt = "menuone,noselect";
    conceallevel = 0;
    fileencoding = "utf-8";
    hidden = true;
    ignorecase = true;
    mouse = "a";
    pumheight = 8;
    pumblend = 10;
    showmode = false;
    smartcase = true;
    smartindent = true;
    splitbelow = true;
    splitright = true;
    swapfile = true;
    timeoutlen = 500;
    undofile = true;
    updatetime = 250;
    writebackup = false;
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    cursorline = true;
    number = true;
    relativenumber = true;
    numberwidth = 4;
    signcolumn = "yes";
    wrap = true;
    scrolloff = 8;
    sidescrolloff = 8;
    lazyredraw = true;
    termguicolors = true;
    spelllang = "en,cjk";
  };

  extraConfigLua = ''
    vim.opt.shortmess:append "Ac" -- Disable asking when editing file with swapfile.
    vim.opt.whichwrap:append "<,>,[,],h,l"
    vim.opt.iskeyword:append "-"
    vim.opt.clipboard = "unnamedplus"


    -- Highlight Yanked text
    vim.api.nvim_create_autocmd('TextYankPost', {
      group = vim.api.nvim_create_augroup('highlight_yank', {}),
      desc = 'Hightlight selection on yank',
      pattern = '*',
      callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 100 }
      end,
    })
  '';
}
