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
    'folke/tokyonight.nvim',
    event = 'VimEnter',
    config = function()
      cmd 'colorscheme tokyonight'
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
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
    'kabouzeid/nvim-lspinstall',
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
    end,
    setup = function()
      map('n', '<leader>gs', ':Gitsigns stage_hunk <CR>', {})
      map('n', '<leader>gS', ':Gitsigns undo_stage_hunk <CR>', {})
      map('n', '<leader>gj', ':Gitsigns next_hunk <CR>', {})
      map('n', '<leader>gk', ':Gitsigns prev_hunk <CR>', {})
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

  use {
    "kyazdani42/nvim-web-devicons",
    config = function ()
	  require'nvim-web-devicons'.setup {
      -- globally enable default icons (default to false)
      -- will get overriden by `get_icons` option
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
      -- following options are the default
      require'nvim-tree'.setup {
        -- disables netrw completely
        disable_netrw       = true,
        -- hijack netrw window on startup
        hijack_netrw        = true,
        -- open the tree when running this setup function
        open_on_setup       = false,
        -- will not open on setup if the filetype is in this list
        ignore_ft_on_setup  = {},
        -- closes neovim automatically when the tree is the last **WINDOW** in the view
        auto_close          = true,
        -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
        open_on_tab         = true,
        -- hijack the cursor in the tree to put it at the start of the filename
        hijack_cursor       = false,
        -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
        update_cwd          = false,
        -- show lsp diagnostics in the signcolumn
        lsp_diagnostics     = true,
        -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
        update_focused_file = {
          -- enables the feature
          enable      = true,
          -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
          -- only relevant when `update_focused_file.enable` is true
          update_cwd  = false,
          -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
          -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
          ignore_list = {}
        },
        -- configuration options for the system open command (`s` in the tree by default)
        system_open = {
          -- the command to run this, leaving nil should work in most cases
          cmd  = nil,
          -- the command arguments as a list
          args = {}
        },

        view = {
          -- width of the window, can be either a number (columns) or a string in `%`
          width = 30,
          -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
          side = 'left',
          -- if true the tree will resize itself after opening a file
          auto_resize = false,
          mappings = {
            -- custom only false will merge the list with the default mappings
            -- if true, it will only use your list to set the mappings
            custom_only = false,
            -- list of mappings to set on the tree manually
            list = {}
          }
        }
      }
      local tree_cb = require'nvim-tree.config'.nvim_tree_callback
      -- default mappings
      local list = {
        { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
        { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
        { key = "<C-v>",                        cb = tree_cb("vsplit") },
        { key = "<C-x>",                        cb = tree_cb("split") },
        { key = "<C-t>",                        cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<BS>",                         cb = tree_cb("close_node") },
        { key = "<S-CR>",                       cb = tree_cb("close_node") },
        { key = "<Tab>",                        cb = tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "R",                            cb = tree_cb("refresh") },
        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = tree_cb("remove") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        { key = "x",                            cb = tree_cb("cut") },
        { key = "c",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = "-",                            cb = tree_cb("dir_up") },
        { key = "s",                            cb = tree_cb("system_open") },
        { key = "q",                            cb = tree_cb("close") },
        { key = "g?",                           cb = tree_cb("toggle_help") },
      }
    end,
    setup = function()
      map("n", '<leader>p', ":NvimTreeFocus <CR>", {})
    end
  }

  use {
    "windwp/nvim-autopairs",
    after = "nvim-compe",
    config = function()
      local autopairs = require("nvim-autopairs")
      local autopairs_completion = require("nvim-autopairs.completion.compe")
      autopairs.setup()
      autopairs_completion.setup {
        map_complete = true, -- insert () func completion
        map_cr = true,
      }
    end,
  }

  use {
    'bhurlow/vim-parinfer',
    ft = { 'clojure' },
  }

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
    'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons'
    },
    setup = function()
      map('n', '<leader>ff', ':FzfLua files <CR>', {})
      map('n', '<leader>fs', ':FzfLua live_grep_native <CR>', {})
      map('n', '<leader>fv', ':FzfLua grep_visual <CR>', {})
      map('n', '<leader>fb', ':FzfLua buffers <CR>', {})
      map('n', '<leader>ft', ':FzfLua <CR>', {})
      map('n', '<leader>gm', ':FzfLua git_branches <CR>', {})
      map('n', '<leader>lr', ':FzfLua lsp_references <CR>', {})
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

end)
