local packer = require('packer')

-- Packer setup
return packer.startup(function(use)

  use {
    'wbthomason/packer.nvim',
    event = 'VimEnter'
  }

  use {
    'tpope/vim-repeat',
  }

  use {
    'andymass/vim-matchup',
    event = 'VimEnter'
  }

  use 'EdenEast/nightfox.nvim'

  use 'ellisonleao/gruvbox.nvim'

  use 'folke/tokyonight.nvim'

  use 'projekt0n/github-nvim-theme'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    event = "BufRead",
    config = function()
      require('nvim-treesitter.configs').setup {
        autotag = {
          enable = true,
        },
        ensure_installed = {
           "lua",
           "clojure",
        },
        highlight = {
           enable = true,
        },
     }
    end
  }

  -- LSP

  use {
    'williamboman/nvim-lsp-installer',
  }

  use {
    "neovim/nvim-lspconfig",
    after = "nvim-lsp-installer",
    config = function()
      local lsp_installer = require("nvim-lsp-installer")
      lsp_installer.on_server_ready(function(server)
          local opts = {}
          server:setup(opts)
      end)
    end
  }

  use {
    'folke/lsp-colors.nvim',
  }

  use {
    "folke/trouble.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require("trouble").setup {}
    end,
    setup = function()
      map('n', '<leader>fp', ':TroubleToggle <CR>', {})
    end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      g.timeoutlen = 500
      require("which-key").setup {}
    end
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end,
    setup = function()
      map('n', '<leader>fo', ':TodoLocList <CR>', {})
    end
  }

  use {
    "ray-x/lsp_signature.nvim",
    after = "nvim-lspconfig",
    config = function()
      local lspsignature = require('lsp_signature')
      lspsignature.setup {
        doc_lines = 2,
        fix_pos = true,
        hint_prefix = " ",
        hi_parameter = "Search",
        max_height = 22,
        handler_opts = {
          border = "single", -- double, single, shadow, none
        },
      }
    end
  }

  use {
    "onsails/lspkind-nvim",
    event = "BufEnter",
    config = function()
      local lspkind = require('lspkind')
      lspkind.init()
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  use {
    "terrortylor/nvim-comment",
    cmd = "CommentToggle",
    config = function()
      require('nvim_comment').setup()
    end,
    setup = function()
      map('n', '<leader>/', ':CommentToggle <CR>', {})
      map('v', '<leader>/', ':CommentToggle <CR>', {})
    end
  }

  use {
     "karb94/neoscroll.nvim",
     event = "WinScrolled",
     config = function()
       require("neoscroll").setup()
     end,
  }

  use {
     "sbdchd/neoformat",
     cmd = "Neoformat",
     setup = function()
       map("n", '<leader>wf', ":Neoformat <CR>", {})
     end,
  }

  -- Git

  use {
    'tpope/vim-fugitive',
    setup = function()
      map('n', '<leader>gb', ':Git blame<CR>', {})
      map('n', '<leader>gc', ':Git commit<CR>', {})
      map('n', '<leader>gp', ':Git push<CR>', {})
      map('n', '<leader>gl', ':Git pull<CR>', {})
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end,
    setup = function()
      map('n', '<leader>gs', ':Gitsigns stage_hunk <CR>', {})
      map('n', '<leader>gu', ':Gitsigns undo_stage_hunk <CR>', {})
      map('n', '<leader>gj', ':Gitsigns next_hunk <CR>', {})
      map('n', '<leader>gk', ':Gitsigns prev_hunk <CR>', {})
    end
  }

  use {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("autosave").setup {
         enabled = g.auto_save or false, -- takes boolean value from init.lua
         events = { "InsertLeave", }, --"TextChanged" },
         clean_command_line_interval = 2500,
         on_off_commands = true,
      }
    end,
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      g.indentLine_enabled = 1
      g.indent_blankline_char = "▏"

      g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard", "packer" }
      g.indent_blankline_buftype_exclude = { "terminal" }

      g.indent_blankline_show_trailing_blankline_indent = false
      g.indent_blankline_show_first_indent_level = false
    end,
  }

  use {
    "norcalli/nvim-colorizer.lua",
    event = "BufRead",
    config = function()
      require('colorizer').setup()
      cmd "ColorizerReloadAllBuffers"
    end,
  }

  use {
    'hrsh7th/cmp-nvim-lsp'
  }

  use {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      local cmp = require'cmp'
      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          end,
        },
        mapping = {
          ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
          ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
          ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
          }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          -- { name = 'vsnip' }, -- For vsnip users.
          -- { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
          { name = 'buffer' },
        })
      })

      -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline('/', {
        sources = {
          { name = 'buffer' }
        }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })

      -- Setup lspconfig.
      local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
        capabilities = capabilities
      }
    end,
    requires = {
       {
          "rafamadriz/friendly-snippets",
          event = "InsertCharPre",
       },
    },
  }

  use {
    "kyazdani42/nvim-web-devicons",
    config = function ()
      require'nvim-web-devicons'.setup {
        default = true;
      }
    end
  }

  use {
    "kyazdani42/nvim-tree.lua",
    cmd = {
      "NvimTreeToggle",
      "NvimTreeFocus",
    },
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      require('nvim-tree').setup {
        open_on_tab = true,
        update_cwd = true,
        update_focused_file = {
          enable = true,
        },
        diagnostics = {
          enable = true,
          show_on_dirs = true,
        },
        renderer = {
          highlight_opened_files = 'icon',
        },
      }
    end,
    setup = function()
      map("n", '<leader>p', ":NvimTreeFocus <CR>", {})
    end
  }

  use {
    "windwp/nvim-autopairs",
    after = "nvim-cmp",
    config = function()
      require('nvim-autopairs').setup{}
    end,
  }

  use {
    'gpanders/nvim-parinfer',
    ft = { 'clojure' },
  }

  use {
    'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons'
    },
    setup = function()
      map('n', '<leader>ff', ':FzfLua files <CR>', {})
      map('n', '<leader>fs', ':FzfLua live_grep_native <CR>', {})
      map('n', '<leader>fb', ':FzfLua buffers <CR>', {})
      map('n', '<leader>ft', ':FzfLua <CR>', {})
      map('n', '<leader>gm', ':FzfLua git_branches <CR>', {})
      map('n', '<leader>lr', ':FzfLua lsp_references <CR>', {})
      map('n', '<leader>fd', ':lua require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") }) <CR>', {})
    end
  }

  use {
    'junegunn/vim-easy-align',
    setup = function ()
      map('v', '<leader>a', '<Plug>(EasyAlign)<CR>', {})
    end
  }

  use {
    'RRethy/vim-illuminate',
    config = function ()
      g.Illuminate_delay = 250
    end
  }

  use {
    'wakatime/vim-wakatime'
  }

  use {
    'windwp/nvim-spectre',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    setup = function ()
      map('n', '<leader>R', ':lua require("spectre").open()<CR>', {})
      map('n', '<leader>rw', ':lua require("spectre").open_visual({select_word=true})<CR>', {})
      map('v', '<leader>rv', ':lua require("spectre").open_visual()<CR>', {})
      map('n', '<leader>rp', ':lua require("spectre").open_file_search()<CR>', {})
    end
  }

  use {
    'alvan/vim-closetag',
  }

  use {
    'tveskag/nvim-blame-line',
    event = "BufEnter",
    config = function ()
      cmd 'EnableBlameLine'
    end
  }

  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {}
      map('n', '<leader>j', ':HopWord <CR>', {})
    end
  }
end)
