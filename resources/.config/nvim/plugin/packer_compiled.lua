-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gnome/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gnome/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gnome/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gnome/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gnome/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    config = { "\27LJ\2\n¸\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\3\0009\3\4\3\14\0\3\0X\4\1€+\3\1\0=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\vevents\1\2\0\0\16InsertLeave\fenabled\1\0\2 clean_command_line_interval\3Ä\19\20on_off_commands\2\14auto_save\6g\nsetup\rautosave\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim.git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp.git"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets.git"
  },
  ["fzf-lua"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua.git"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\feviline\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim.git"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim.git"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nk\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0004\5\0\0B\0\5\1K\0\1\0\18:HopWord <CR>\14<leader>j\6n\bmap\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim.git"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÎ\2\0\0\2\0\n\0\0196\0\0\0)\1\1\0=\1\1\0006\0\0\0'\1\3\0=\1\2\0006\0\0\0005\1\5\0=\1\4\0006\0\0\0005\1\a\0=\1\6\0006\0\0\0+\1\1\0=\1\b\0006\0\0\0+\1\1\0=\1\t\0K\0\1\0-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\2\0\0\rterminal%indent_blankline_buftype_exclude\1\5\0\0\thelp\rterminal\14dashboard\vpacker&indent_blankline_filetype_exclude\bâ–\26indent_blankline_char\23indentLine_enabled\6g\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim.git"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim.git"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n¯\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\5\17hi_parameter\vSearch\16hint_prefix\tïŸ» \ffix_pos\2\14doc_lines\3\2\15max_height\3\22\nsetup\18lsp_signature\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim.git"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\tinit\flspkind\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim.git"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat.git"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim.git"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs.git"
  },
  ["nvim-blame-line"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20EnableBlameLine\bcmd\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-blame-line",
    url = "https://github.com/tveskag/nvim-blame-line.git"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0Ð\6\1\0\n\0003\0l6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\a\b\0009\a\t\a)\tüÿB\a\2\0025\b\n\0B\5\3\2=\5\f\0049\5\b\0009\a\b\0009\a\t\a)\t\4\0B\a\2\0025\b\r\0B\5\3\2=\5\14\0049\5\b\0009\a\b\0009\a\15\aB\a\1\0025\b\16\0B\5\3\2=\5\17\0049\5\18\0009\5\19\5=\5\20\0049\5\b\0005\a\22\0009\b\b\0009\b\21\bB\b\1\2=\b\23\a9\b\b\0009\b\24\bB\b\1\2=\b\25\aB\5\2\2=\5\26\0049\5\b\0009\5\27\0055\a\28\0B\5\2\2=\5\29\4=\4\b\0039\4\18\0009\4\30\0044\6\3\0005\a\31\0>\a\1\0064\a\3\0005\b \0>\b\1\aB\4\3\2=\4\30\3B\1\2\0019\1\2\0009\1!\1'\3\"\0005\4$\0004\5\3\0005\6#\0>\6\1\5=\5\30\4B\1\3\0019\1\2\0009\1!\1'\3%\0005\4(\0009\5\18\0009\5\30\0054\a\3\0005\b&\0>\b\1\a4\b\3\0005\t'\0>\t\1\bB\5\3\2=\5\30\4B\1\3\0016\1\0\0'\3)\0B\1\2\0029\1*\0016\3+\0009\3,\0039\3-\0039\3.\3B\3\1\0A\1\0\0026\2\0\0'\4/\0B\2\2\0029\0020\0029\2\2\0025\0041\0=\0012\4B\2\2\1K\0\1\0\17capabilities\1\0\0\22<YOUR_LSP_SERVER>\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp.git"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\na\0\0\3\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0'\2\4\0B\0\2\1K\0\1\0\30ColorizerReloadAllBuffers\bcmd\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua.git"
  },
  ["nvim-comment"] = {
    commands = { "CommentToggle" },
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment.git"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/nvim-fzf",
    url = "https://github.com/vijaymarupudi/nvim-fzf.git"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer.git"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\2\n%\0\1\6\0\1\0\0064\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\1K\0\1\0\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig.git"
  },
  ["nvim-parinfer"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-parinfer",
    url = "https://github.com/gpanders/nvim-parinfer.git"
  },
  ["nvim-spectre"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre.git"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\2\nÛ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\rrenderer\1\0\1\27highlight_opened_files\ticon\16diagnostics\1\0\2\venable\2\17show_on_dirs\2\24update_focused_file\1\0\1\venable\2\1\0\2\15update_cwd\2\16open_on_tab\2\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua.git"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n­\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\3\0\0\blua\fclojure\fautotag\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter.git"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons.git"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim.git"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim.git"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim.git"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim.git"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim.git"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag.git"
  },
  ["vim-easy-align"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align.git"
  },
  ["vim-fugitive"] = {
    loaded = true,
    needs_bufread = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive.git"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\n*\0\0\2\0\2\0\0046\0\0\0)\1ú\0=\1\1\0K\0\1\0\21Illuminate_delay\6g\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate.git"
  },
  ["vim-matchup"] = {
    after_files = { "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup.git"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat.git"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime.git"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nT\0\0\3\0\5\0\n6\0\0\0)\1ô\1=\1\1\0006\0\2\0'\2\3\0B\0\2\0029\0\4\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\6g\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim.git"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: nvim-comment
time([[Setup for nvim-comment]], true)
try_loadstring("\27LJ\2\na\0\0\6\0\5\0\r6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\0\0'\2\4\0'\3\2\0'\4\3\0004\5\0\0B\0\5\1K\0\1\0\6v\24:CommentToggle <CR>\14<leader>/\6n\bmap\0", "setup", "nvim-comment")
time([[Setup for nvim-comment]], false)
-- Setup for: vim-easy-align
time([[Setup for vim-easy-align]], true)
try_loadstring("\27LJ\2\nI\0\0\6\0\4\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\1K\0\1\0\26<Plug>(EasyAlign)<CR>\14<leader>a\6v\bmap\0", "setup", "vim-easy-align")
time([[Setup for vim-easy-align]], false)
time([[packadd for vim-easy-align]], true)
vim.cmd [[packadd vim-easy-align]]
time([[packadd for vim-easy-align]], false)
-- Setup for: todo-comments.nvim
time([[Setup for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\nF\0\0\6\0\4\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\1K\0\1\0\22:TodoLocList <CR>\15<leader>fo\6n\bmap\0", "setup", "todo-comments.nvim")
time([[Setup for todo-comments.nvim]], false)
time([[packadd for todo-comments.nvim]], true)
vim.cmd [[packadd todo-comments.nvim]]
time([[packadd for todo-comments.nvim]], false)
-- Setup for: vim-fugitive
time([[Setup for vim-fugitive]], true)
try_loadstring("\27LJ\2\nØ\1\0\0\6\0\n\0\0256\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\b\0'\4\t\0004\5\0\0B\0\5\1K\0\1\0\18:Git pull<CR>\15<leader>gl\18:Git push<CR>\15<leader>gp\20:Git commit<CR>\15<leader>gc\19:Git blame<CR>\15<leader>gb\6n\bmap\0", "setup", "vim-fugitive")
time([[Setup for vim-fugitive]], false)
time([[packadd for vim-fugitive]], true)
vim.cmd [[packadd vim-fugitive]]
time([[packadd for vim-fugitive]], false)
-- Setup for: tokyonight.nvim
time([[Setup for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\2\0\3\0\0046\0\0\0'\1\2\0=\1\1\0K\0\1\0\nnight\21tokyonight_style\6g\0", "setup", "tokyonight.nvim")
time([[Setup for tokyonight.nvim]], false)
-- Setup for: neoformat
time([[Setup for neoformat]], true)
try_loadstring("\27LJ\2\nD\0\0\6\0\4\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\1K\0\1\0\20:Neoformat <CR>\15<leader>wf\6n\bmap\0", "setup", "neoformat")
time([[Setup for neoformat]], false)
-- Setup for: fzf-lua
time([[Setup for fzf-lua]], true)
try_loadstring("\27LJ\2\nÔ\3\0\0\6\0\16\0+6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\n\0'\4\v\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\f\0'\4\r\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\14\0'\4\15\0004\5\0\0B\0\5\1K\0\1\0I:lua require(\"fzf-lua\").files({ cwd = vim.fn.expand(\"%:p:h\") }) <CR>\15<leader>fd :FzfLua lsp_references <CR>\15<leader>lr\30:FzfLua git_branches <CR>\15<leader>gm\17:FzfLua <CR>\15<leader>ft\25:FzfLua buffers <CR>\15<leader>fb\":FzfLua live_grep_native <CR>\15<leader>fs\23:FzfLua files <CR>\15<leader>ff\6n\bmap\0", "setup", "fzf-lua")
time([[Setup for fzf-lua]], false)
time([[packadd for fzf-lua]], true)
vim.cmd [[packadd fzf-lua]]
time([[packadd for fzf-lua]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nˆ\2\0\0\6\0\n\0\0256\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\b\0'\4\t\0004\5\0\0B\0\5\1K\0\1\0\29:Gitsigns prev_hunk <CR>\15<leader>gk\29:Gitsigns next_hunk <CR>\15<leader>gj#:Gitsigns undo_stage_hunk <CR>\15<leader>gu\30:Gitsigns stage_hunk <CR>\15<leader>gs\6n\bmap\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
-- Setup for: trouble.nvim
time([[Setup for trouble.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\6\0\4\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\1K\0\1\0\24:TroubleToggle <CR>\15<leader>fp\6n\bmap\0", "setup", "trouble.nvim")
time([[Setup for trouble.nvim]], false)
time([[packadd for trouble.nvim]], true)
vim.cmd [[packadd trouble.nvim]]
time([[packadd for trouble.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nG\0\0\6\0\4\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\1K\0\1\0\24:NvimTreeFocus <CR>\14<leader>p\6n\bmap\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: nvim-spectre
time([[Setup for nvim-spectre]], true)
try_loadstring("\27LJ\2\nÖ\2\0\0\6\0\v\0\0256\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0'\2\6\0'\3\a\0'\4\b\0004\5\0\0B\0\5\0016\0\0\0'\2\1\0'\3\t\0'\4\n\0004\5\0\0B\0\5\1K\0\1\0003:lua require(\"spectre\").open_file_search()<CR>\15<leader>rp.:lua require(\"spectre\").open_visual()<CR>\15<leader>rv\6v@:lua require(\"spectre\").open_visual({select_word=true})<CR>\15<leader>rw':lua require(\"spectre\").open()<CR>\14<leader>R\6n\bmap\0", "setup", "nvim-spectre")
time([[Setup for nvim-spectre]], false)
time([[packadd for nvim-spectre]], true)
vim.cmd [[packadd nvim-spectre]]
time([[packadd for nvim-spectre]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nk\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0004\5\0\0B\0\5\1K\0\1\0\18:HopWord <CR>\14<leader>j\6n\bmap\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\5\0\n6\0\0\0)\1ô\1=\1\1\0006\0\2\0'\2\3\0B\0\2\0029\0\4\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\6g\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\n*\0\0\2\0\2\0\0046\0\0\0)\1ú\0=\1\1\0K\0\1\0\21Illuminate_delay\6g\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\feviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: AutoSave.nvim
time([[Config for AutoSave.nvim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\3\0009\3\4\3\14\0\3\0X\4\1€+\3\1\0=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\vevents\1\2\0\0\16InsertLeave\fenabled\1\0\2 clean_command_line_interval\3Ä\19\20on_off_commands\2\14auto_save\6g\nsetup\rautosave\frequire\0", "config", "AutoSave.nvim")
time([[Config for AutoSave.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lsp-installer ]]
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n%\0\1\6\0\1\0\0064\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\1K\0\1\0\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lspconfig")

vim.cmd [[ packadd lsp_signature.nvim ]]

-- Config for: lsp_signature.nvim
try_loadstring("\27LJ\2\n¯\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\5\17hi_parameter\vSearch\16hint_prefix\tïŸ» \ffix_pos\2\14doc_lines\3\2\15max_height\3\22\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CommentToggle lua require("packer.load")({'nvim-comment'}, { cmd = "CommentToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'nvim-parinfer'}, { ft = "clojure" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup', 'packer.nvim', 'tokyonight.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-treesitter', 'nvim-colorizer.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'lspkind-nvim', 'nvim-blame-line'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
