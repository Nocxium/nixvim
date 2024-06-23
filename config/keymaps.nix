{ self, ... }:
{
  config = {
    globals.mapleader = " ";
    keymaps = [
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>:Telescope buffers initial_mode=insert<CR>";
        options = {
          desc = "find buffers";
        };
      }
      {
        mode = "n";
        key = "<S-Tab>";
        action = "<cmd>:Telescope buffers initial_mode=insert<CR>";
        options = {
          desc = "search buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>:Telescope oldfiles<CR>";
        options = {
          desc = "find recent files";
        };
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>:Telescope find_files<CR>";
        options = {
          desc = "find files";
        };
      }
      {
        mode = "n";
        key = "<leader>fe";
        action = "<cmd>:Telescope file_browser<CR>";
        options = {
          desc = "browse files";
        };
      }
      {
        mode = "n";
        key = "<leader>fw";
        action = "<cmd>:Telescope live_grep<CR>";
        options = {
          desc = "find words";
        };
      }
      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>:Telescope current_buffer_fuzzy_find<CR>";
        options = {
          desc = "find words in buffer";
        };
      }
      {
        mode = "n";
        key = "<A-t>";
        action = "<cmd>:ToggleTerm size=40 direction=float<CR>";
        options = {
          desc = "Open floating terminal";
        };
      }
      {
        mode = "n";
        key = "<A-v>";
        action = "<cmd>:ToggleTerm size=110 direction=vertical<CR>";
        options = {
          desc = "Open vertical terminal";
        };
      }
      {
        mode = "n";
        key = "<A-s>";
        action = "<cmd>:ToggleTerm size=15 direction=horizontal<CR>";
        options = {
          desc = "Open horizontal terminal";
        };
      }
      {
        mode = "n";
        key = "<leader>sc";
        action = "<cmd>:set spell!<CR>";
        options = {
          desc = "toggle spellcheck";
        };
      }
      {
        mode = "n";
        key = "ª";
        action = "<cmd>:lua require('harpoon.ui').nav_file(1)<CR>";
        options = {
          desc = "harpoon to file 1";
        };
      }
      {
        mode = "n";
        key = "ß";
        action = "<cmd>:lua require('harpoon.ui').nav_file(2)<CR>";
        options = {
          desc = "harpoon to file 2";
        };
      }
      {
        mode = "n";
        key = "ð";
        action = "<cmd>:lua require('harpoon.ui').nav_file(3)<CR>";
        options = {
          desc = "harpoon to file 3";
        };
      }
      {
        mode = "n";
        key = "đ";
        action = "<cmd>:lua require('harpoon.ui').nav_file(4)<CR>";
        options = {
          desc = "harpoon to file 4";
        };
      }
      {
        mode = "n";
        key = "<leader>uu";
        action = "<cmd>:UndotreeToggle<CR>";
        options = {
          desc = "lachn undotreeToggle";
        };
      }
      {
        mode = "n";
        key = "σ";
        action = "<cmd>:lua require('harpoon.mark').add_file()<CR>";
        options = {
          desc = "add file to harpoon";
        };
      }
      {
        mode = "n";
        key = "ł";
        action = "<cmd>:lua require('harpoon.mark').add_file()<CR>";
        options = {
          desc = "add file to harpoon";
        };
      }
      {
        mode = "n";
        key = "ſ";
        action = "<cmd>:lua require('harpoon.mark').add_file()<CR>";
        options = {
          desc = "add file to harpoon";
        };
      }
      {
        mode = "n";
        key = "µ";
        action = "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>";
        options = {
          desc = "toggle harpoon menu";
        };
      }
      {
        mode = "n";
        key = "<leader>os";
        action = "<cmd>:RooterToggle<CR>:Oil ./<CR>";
        options = {
          desc = "Start Oil-mode and Toggle Rooter";
        };
      }
      {
        mode = "n";
        key = "<leader>or";
        action = "<cmd>:RooterToggle<CR>";
        options = {
          desc = "Toggle Rooter";
        };
      }
      {
        mode = "n";
        key = "<leader>pa";
        action = "<cmd>:PicoAdd<CR>";
        options = {
          desc = "Add directory to pico";
        };
      }
      {
        mode = "n";
        key = "<leader>pf";
        action = "<cmd>:PicoFile<CR>";
        options = {
          desc = "Add file to pico";
        };
      }
      {
        mode = "n";
        key = "<leader>pds";
        action = "<cmd>:XPicoRemove<CR>";
        options = {
          desc = "Remove all files on Pico";
        };
      }
      {
        mode = "n";
        key = "<leader>pr";
        action = "<cmd>:20 split | term picocom -b 115200 /dev/ttyACM0<CR>";
        options = {
          desc = "Run Pico";
        };
      }
      {
        mode = "n";
        key = "<leader>fm";
        action = "<cmd>:Format<CR>";
        options = {
          desc = "format text";
        };
      }
      {
        mode = "n";
        key = "<leader>ct";
        action = "<cmd>:ColorizerToggle<CR>";
        options = {
          desc = "Toggle Color Highlights";
        };
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>:Telescope buffers initial_mode=insert<CR>";
        options = {
          desc = "find buffers";
        };
      }
      {
        mode = "n";
        key = "<S-Tab>";
        action = "<cmd>:Telescope buffers initial_mode=insert<CR>";
        options = {
          desc = "search buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>:Telescope oldfiles<CR>";
        options = {
          desc = "find recent files";
        };
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>:Telescope find_files<CR>";
        options = {
          desc = "find files";
        };
      }
      {
        mode = "n";
        key = "<leader>fe";
        action = "<cmd>:Telescope file_browser<CR>";
        options = {
          desc = "browse files";
        };
      }
      {
        mode = "n";
        key = "<leader>fw";
        action = "<cmd>:Telescope live_grep<CR>";
        options = {
          desc = "find words";
        };
      }
      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>:Telescope current_buffer_fuzzy_find<CR>";
        options = {
          desc = "find words in buffer";
        };
      }
      {
        mode = "n";
        key = "<A-t>";
        action = "<cmd>:ToggleTerm size=40 direction=float<CR>";
        options = {
          desc = "Open floating terminal";
        };
      }
      {
        mode = "n";
        key = "<A-v>";
        action = "<cmd>:ToggleTerm size=110 direction=vertical<CR>";
        options = {
          desc = "Open vertical terminal";
        };
      }
      {
        mode = "n";
        key = "<A-s>";
        action = "<cmd>:ToggleTerm size=15 direction=horizontal<CR>";
        options = {
          desc = "Open horizontal terminal";
        };
      }
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>:NvimTreeToggle <CR>";
        options = {
          desc = "Toggle NvimTree";
        };
      }
      {
        mode = "n";
        key = "H";
        action = "^";
        options = {
          desc = "Go to beginning of line";
        };
      }
      {
        mode = "n";
        key = "L";
        action = "$";
        options = {
          desc = "Go to end of line";
        };
      }
      {
        mode = "n";
        key = "<leader>lg";
        action = "<cmd>:LazyGit <CR>";
        options = {
          desc = "run lazygit";
        };
      }
      {
        mode = "n";
        key = "<leader>blg";
        action = "<cmd>:LazyGitFilterCurrentFile <CR> ";
        options = {
          desc = "run lazygit current buffer";
        };
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
        options = {
          desc = "Go to upper window";
        };
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
        options = {
          desc = "Go to lower window";
        };
      }
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
        options = {
          desc = "Go to left window";
        };
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
        options = {
          desc = "Go to right window";
        };
      }
      {
        mode = "n";
        key = "<Leader>w";
        action = "<C-w>w";
        options = {
          desc = "Go to next window";
        };
      }
      {
        mode = "n";
        key = "<C-Up>";
        action = "<cmd>:resize +2<CR>";
        options = {
          desc = "Add size at the top";
        };
      }
      {
        mode = "n";
        key = "<C-Down>";
        action = "<cmd>:resize -2<CR>";
        options = {
          desc = "Add size at the bottom";
        };
      }
      {
        mode = "n";
        key = "<C-Left>";
        action = "<cmd>:vertical resize +2<CR>";
        options = {
          desc = "Add size at the left";
        };
      }
      {
        mode = "n";
        key = "<C-Right>";
        action = "<cmd>:vertical resize -2<CR>";
        options = {
          desc = "Add size at the right";
        };
      }
      {
        mode = "n";
        key = "<bs>";
        action = "<C-^>";
        options = {
          desc = "Go to last used buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>bb";
        action = "<cmd>:enew <CR>";
        options = {
          desc = "new buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>bk";
        action = "<cmd>:bd<CR>";
        options = {
          desc = "Close buffer";
        };
      }
      {
        mode = "n";
        key = "§";
        action = "<cmd>:tabnext <CR> ";
        options = {
          desc = "go to next tab";
        };
      }
      {
        mode = "n";
        key = "½";
        action = "<cmd>:tabprev <CR> ";
        options = {
          desc = "go to prev tab";
        };
      }
      {
        mode = "n";
        key = "<leader>§";
        action = "<cmd>:tabnew <CR> ";
        options = {
          desc = "crete new tab";
        };
      }
      {
        mode = "n";
        key = "<C-d>";
        action = "<C-d>zz";
        options = {};
      }
      {
        mode = "n";
        key = "<C-u>";
        action = "<C-u>zz";
        options = {};
      }
      {
        mode = "n";
        key = "<C-e>";
        action = "<C-u>zz";
        options = {};
      }
      {
        mode = "n";
        key = "n";
        action = "nzz";
        options = {};
      }
      {
        mode = "n";
        key = "<A-i>";
        action = "]mzz";
        options = {};
      }
      {
        mode = "n";
        key = "<A-o>";
        action = "[mzz";
        options = {};
      }
      {
        mode = "n";
        key = "j";
        action = "gj";
        options = {};
      }
      {
        mode = "n";
        key = "k";
        action = "gk";
        options = {};
      }
      {
        mode = "n";
        key = "<";
        action = "<<";
        options = {
          desc = "Indent backward";
        };
      }
      {
        mode = "n";
        key = ">";
        action = ">>";
        options = {
          desc = "Indent forward";
        };
      }
      {
        mode = "n";
        key = "<A-j>";
        action = ":m .+1<CR>==";
        options = {
          desc = "Move the line up";
        };
      }
      {
        mode = "n";
        key = "<A-k>";
        action = ":m .-2<CR>==";
        options = {
          desc = "Move the line down";
        };
      }
      {
        mode = "n";
        key = "<leader>pt";
        action = ":tcd %:h <CR>";
        options = {
          desc = "set path to tab";
        };
      }
      {
        mode = "n";
        key = "<leader>pl";
        action = ":lcd %:h <CR>";
        options = {
          desc = "set path to window";
        };
      }
      {
        mode = "n";
        key = "Y";
        action = "y$";
        options = {
          desc = "yank from cursor point till EOL";
        };
      }
      {
        mode = "n";
        key = "<A-Tab>";
        action = "za";
        options = {};
      }
      {
        mode = "i";
        key = "<A-j>";
        action = "<Esc>:m .+1<CR>==gi";
        options = {
          desc = "Move the line up";
        };
      }
      {
        mode = "i";
        key = "<A-k>";
        action = "<Esc>:m .-2<CR>==gi";
        options = {
          desc = "Move the line down";
        };
      }
      {
        mode = "t";
        key = "<Esc><Esc>";
        action = "<C-\\><C-n>:ToggleTerm<CR>";
        options = {
          desc = "Enter insert mode";
        };
      }
      {
        mode = "t";
        key = "<Esc>";
        action = "<C-\\><C-n>";
        options = {
          desc = "Enter insert mode";
        };
      }
      {
        mode = "v";
        key = "<C-d>";
        action = "<C-d>zz";
        options = {};
      }
      {
        mode = "v";
        key = "<C-u>";
        action = "<C-u>zz";
        options = {};
      }
      {
        mode = "v";
        key = "<C-e>";
        action = "<C-u>zz";
        options = {};
      }
      {
        mode = "v";
        key = "<A-i>";
        action = "]mzz";
        options = {};
      }
      {
        mode = "v";
        key = "<A-o>";
        action = "[mzz";
        options = {};
      }
      {
        mode = "v";
        key = "H";
        action = "^";
        options = {
          desc = "Go to beginning of line";
        };
      }
      {
        mode = "v";
        key = "L";
        action = "$";
        options = {
          desc = "Go to end of line";
        };
      }
      {
        mode = "v";
        key = "j";
        action = "gj";
        options = {};
      }
      {
        mode = "v";
        key = "k";
        action = "gk";
        options = {};
      }
      {
        mode = "v";
        key = "p";
        action = "\"_dP";
        options = {
          desc = "Better Paste";
        };
      }
      {
        mode = "v";
        key = "<";
        action = "<gv";
        options = {
          desc = "Indent backward";
        };
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
        options = {
          desc = "Indent forward";
        };
      }
      {
        mode = "v";
        key = "<A-j>";
        action = ":m '>+1<CR>gv=gv";
        options = {
          desc = "Move the selected text up";
        };
      }
      {
        mode = "v";
        key = "<A-k>";
        action = ":m '<-2<CR>gv=gv";
        options = {
          desc = "Move the selected text down";
        };
      }
      {
        mode = "x";
        key = "<A-j>";
        action = ":m '>+1<CR>gv=gv";
        options = {
          desc = "Move the selected text up";
        };
      }
      {
        mode = "x";
        key = "<A-k>";
        action = ":m '<-2<CR>gv=gv";
        options = {
          desc = "Move the selected text down";
        };
      }
      {
        mode = "n";
        key = "j";
        action = "gj";
        options = {};
      }
      {
        mode = "n";
        key = "k";
        action = "gk";
        options = {};
      }
    ];
  };
}

