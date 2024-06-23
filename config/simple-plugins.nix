{ pkgs, ...}:
{
  plugins = {
    cmp.enable = true;
    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    comment.enable = true;
    diffview.enable = true;
    emmet.enable = true;
    fidget.enable = true;
    flash.enable = true;
    friendly-snippets.enable = true;
    fugitive.enable = true;
    harpoon.enable = true;
    headlines.enable = true;
    hmts.enable = true;
    image.enable = true;
    # indent-blankline.enable = true;
    lazy.enable = true;
    lazygit.enable = true;
    lsp.enable = true;
    lspsaga.enable = true;
    lualine.enable = true;
    luasnip.enable = true;
    markdown-preview.enable = true;
    nix.enable = true;
    # none-ls.enable = true;
    none-ls = {
      enable = true;
      sources = {
        formatting = {
          # stylua.enable = true;
          # google_java_format.enable = true;
          # shfmt.enable = true;
          # clang_format.enable = true;
          stylelint.enable = true;
	  # prettier = {
	  #     enable = true;
	  #     withArgs = " filetypes = { \"html\", \"markdown\", \"css\" }";
	  # };
        };
        diagnostics = {
          stylelint.enable = true;
          # shellcheck = {
          #   enable = true;
          #   diagnostics_format = "#{m} [#{c}]";
          # };
        };
        # code_actions = {
        #   eslint.enable = true;
        # };
       };
      # debug = true;
    };
    notify.enable = true;
    nvim-autopairs.enable = true;
    nvim-colorizer.enable = true;
    nvim-tree.enable = true;
    oil.enable = true;
    plantuml-syntax.enable = true;
    surround.enable = true;
    telescope = {
      enable = true;
      extensions = {
        file-browser.enable = true;
        frecency.enable = true;
      };
      settings = {
        defaults = {
          vimgrep_arguments = [
            "rg"
            "-L"
            "--color=never"
            "--no-heading"
            "--with-filename"
            "--line-number"
            "--column"
            "--smart-case"
          ];
          extensions = {
            file_browser = {
              path = ":%:p:h";
              cwd_to_path = true;
              initial_mode = "normal";
            };
          };
          layout_config = {
            prompt_position = "top";
          };
          mappings = {
            i = {
              "<A-j>" = {
                __raw = "require('telescope.actions').move_selection_next";
              };
              "<A-k>" = {
                __raw = "require('telescope.actions').move_selection_previous";
              };
            };
          };
          selection_caret = "  ";
          prompt_prefix = "   ";

          entry_prefix = "  ";
          initial_mode = "insert";
          selection_strategy = "reset";
          sorting_strategy = "ascending";
          layout_strategy = "horizontal";
          layout_config = {
            horizontal = {
              prompt_position = "top";
              preview_width = 0.55;
              results_width = 0.8;
            };
            vertical = {
              mirror = false;
            };
            width = 0.87;
            height = 0.80;
            preview_cutoff = 120;
          };
          set_env = {
            COLORTERM = "truecolor";
          };
          winblend = 0;
          border = {};
          borderchars = [ "─" "│" "─" "│" "╭" "╮" "╯" "╰" ];
          color_devicons = true;
        };
      };
    };
    toggleterm.enable = true;
    transparent.enable = true;
    treesitter.enable = true;
    treesitter-context.enable = true;
    undotree.enable = true;
    which-key.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [
    vim-rooter
  ];
  extraConfigLua = "vim.g.rooter_patterns = {'>.config', '.git', '.ozz', 'index.md', '>Documents', '>rPiPico', '>Pico', '>dotfiles', '=home-manager', '=nixos', '*.norg'}";
}
