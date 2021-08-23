local packer = require('packer')

-- Auto-compile if plugin list was changed
cmd('autocmd BufWritePost plugins.lua source <afile> | PackerCompile ')

-- Packer setup
return packer.startup(function(use)

  use {
    'wbthomason/packer.nvim',
    event = 'VimEnter'
  }

  use {
    'andymass/vim-matchup',
    event = 'VimEnter'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    setup = function()
      map('n', '<leader>ff', ':Telescope find_files <CR>', {})
      map('n', '<leader>fs', ':Telescope live_grep <CR>', {})
    end
  }

  use {
    'folke/tokyonight.nvim',
    event = 'VimEnter',
    config = function()
      cmd 'colorscheme tokyonight'
    end
  }

  use {
     "nvim-treesitter/nvim-treesitter",
     run = ':TSUpdate',
     event = "BufRead",
     config = function()
       require('nvim-treesitter.configs').setup {
         ensure_installed = {
            "lua",
         },
         highlight = {
            enable = true,
            use_languagetree = true,
         },
      }
     end
  }

  use {
     "kabouzeid/nvim-lspinstall",
     event = "BufRead",
  }

  use {
     "neovim/nvim-lspconfig",
     after = "nvim-lspinstall",
     config = function()
       require('lspinstall').setup() -- important

       local servers = require('lspinstall').installed_servers()
       for _, server in pairs(servers) do
         require('lspconfig')[server].setup{}
       end
     end
  }

  use {
     "ray-x/lsp_signature.nvim",
     after = "nvim-lspconfig",
     config = function()
       local lspsignature = require('lsp_signature')
        lspsignature.setup {
           bind = true,
           doc_lines = 2,
           floating_window = true,
           fix_pos = true,
           hint_enable = true,
           hint_prefix = " ",
           hint_scheme = "String",
           use_lspsaga = false,
           hi_parameter = "Search",
           max_height = 22,
           max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
           handler_opts = {
             border = "single", -- double, single, shadow, none
           },
           zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
           padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc
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
    'glepnir/galaxyline.nvim',
      branch = 'main',
      -- your statusline
      config = function()
        require('statusline')
      end,
      requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true
      }
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

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
     "Pocco81/AutoSave.nvim",
     config = function()
      require("autosave").setup {
         enabled = g.auto_save or false, -- takes boolean value from init.lua
         execution_message = "autosaved at : " .. fn.strftime "%H:%M:%S",
         events = { "InsertLeave", }, --"TextChanged" },
         conditions = {
            exists = true,
            filetype_is_not = {},
            modifiable = true,
         },
         clean_command_line_interval = 2500,
         on_off_commands = true,
         write_all_buffers = false,
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
      "hrsh7th/nvim-compe",
      event = "InsertEnter",
      config = function()
        require("compe").setup {
           enabled = true,
           autocomplete = true,
           debug = false,
           documentation = true,
           incomplete_delay = 400,
           max_abbr_width = 100,
           max_kind_width = 100,
           max_menu_width = 100,
           min_length = 1,
           preselect = "enable",
           source_timeout = 200,
           source = {
             buffer = { kind = "﬘", true },
             luasnip = { kind = "﬌", true },
             nvim_lsp = true,
             nvim_lua = true,
           },
           throttle_time = 80,
        }
      end,
      requires = {
         {
            "rafamadriz/friendly-snippets",
            event = "InsertCharPre",
         },
      },
   }

end)
