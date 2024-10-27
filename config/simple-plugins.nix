{ pkgs, ...}:
{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        experimental = {
          ghost_text = true;
        };
      };
      settings = {
        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
              ["<C-k>"] = cmp.mapping.select_prev_item(),
              ["<C-j>"] = cmp.mapping.select_next_item(),
              ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1)),
              ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1)),
              ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
              ["<C-e>"] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close(),
              }),
              -- Accept currently selected item. If none selected, `select` first item.
              -- Set `select` to `false` to only confirm explicitly selected items.
              ["<CR>"] = cmp.mapping.confirm({ select = false }),
--               ["<Tab>"] = cmp.mapping(function(fallback)
--                 if cmp.visible() then
--                   cmp.select_next_item()
--                 elseif luasnip.expandable() then
--                   luasnip.expand()
--                 elseif luasnip.expand_or_jumpable() then
--                   luasnip.expand_or_jump()
--                 else
--                   fallback()
--                 end
--               end, {
--                 "i",
--                 "s",
--               }),
--               ["<S-Tab>"] = cmp.mapping(function(fallback)
--                 if cmp.visible() then
--                   cmp.select_prev_item()
--                 elseif luasnip.jumpable(-1) then
--                   luasnip.jump(-1)
--                 else
--                   fallback()
--                 end
--              end, {
--                "i",
--                "s",
--              }),
            })
          '';
        };
        snippet = {
          expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        };
        sources = {
          __raw = ''
            cmp.config.sources({
              { name = "nvim_lsp" },
              { name = "nvim_lua" },
              { name = "luasnip" },
              { name = "buffer" },
              { name = "path" },
              }, {
            {name = 'buffer'},
            })
          '';
        };
        performance = {
          debounce = 60;
          fetching_timeout = 200;
          max_view_entries = 30;
        };
        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
          };
          documentation = {
            border = "rounded";
          };
        };
        formatting = {
          fields = ["kind" "abbr" "menu"];
          expandable_indicator = true;
        };
      };
    };
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
    lazygit = {
      enable = true;
    };
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
    lz-n
  ];
  extraConfigLua = ''
    vim.g.rooter_patterns = {'>.config', '.git', '.ozz', 'index.md', '>Documents', '>rPiPico', '>Pico', '>dotfiles', '=home-manager', '=nixos', '*.norg'}

    require("lz.n").load {
      "lazygit.nvim",
      -- load cmp on InsertEnter
      event = "BufEnter *lua",
    }
  '';
}
