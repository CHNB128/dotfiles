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
local package_path_str = "/home/gnome/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/gnome/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/gnome/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/gnome/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gnome/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    config = { "\27LJ\1\2à\2\0\0\5\0\17\0\0264\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0004\2\3\0007\2\4\2\14\0\2\0T\3\1€)\2\1\0:\2\6\1%\2\a\0004\3\b\0007\3\t\3%\4\n\0>\3\2\2$\2\3\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0002\3\0\0:\3\15\2:\2\16\1>\0\2\1G\0\1\0\15conditions\20filetype_is_not\1\0\2\15modifiable\2\vexists\2\vevents\1\2\0\0\16InsertLeave\22execution_message\r%H:%M:%S\rstrftime\afn\20autosaved at : \fenabled\1\0\3\20on_off_commands\2\22write_all_buffers\1 clean_command_line_interval\3Ä\19\14auto_save\6g\nsetup\rautosave\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/AutoSave.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  ["fzf-lua"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/fzf-lua"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15statusline\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2Î\2\0\0\2\0\n\0\0194\0\0\0'\1\1\0:\1\1\0004\0\0\0%\1\3\0:\1\2\0004\0\0\0003\1\5\0:\1\4\0004\0\0\0003\1\a\0:\1\6\0004\0\0\0)\1\1\0:\1\b\0004\0\0\0)\1\1\0:\1\t\0G\0\1\0-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\2\0\0\rterminal%indent_blankline_buftype_exclude\1\5\0\0\thelp\rterminal\14dashboard\vpacker&indent_blankline_filetype_exclude\bâ–\26indent_blankline_char\23indentLine_enabled\6g\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\1\2’\2\0\0\4\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0003\3\4\0:\3\5\2>\1\2\1G\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\r\15max_height\3\22\14doc_lines\3\2\20floating_window\2\tbind\2\16hint_scheme\vString\vzindex\3È\1\ffix_pos\2\16use_lspsaga\1\17hi_parameter\vSearch\16hint_prefix\tïŸ» \16hint_enable\2\14max_width\3x\fpadding\5\nsetup\18lsp_signature\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\0024\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\1G\0\1\0\tinit\flspkind\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/lspkind-nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2\1\0\0\4\0\5\0\f4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0>\2\1\0017\2\3\0013\3\4\0>\2\2\1G\0\1\0\1\0\2\17map_complete\2\vmap_cr\2\nsetup$nvim-autopairs.completion.compe\19nvim-autopairs\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2a\0\0\2\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0%\1\4\0>\0\2\1G\0\1\0\30ColorizerReloadAllBuffers\bcmd\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    commands = { "CommentToggle" },
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\1\2Ï\2\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0003\3\4\0:\3\6\0023\3\a\0:\3\b\2:\2\t\1>\0\2\1G\0\1\0\vsource\fluasnip\1\2\1\0\2\tkind\bï¬Œ\vbuffer\1\0\2\rnvim_lua\2\rnvim_lsp\2\1\2\1\0\2\tkind\bï¬˜\1\0\f\17autocomplete\2\19max_menu_width\3d\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\19source_timeout\3È\1\19max_kind_width\3d\15min_length\3\1\18throttle_time\3P\18documentation\2\nsetup\ncompe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/nvim-fzf"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\a€4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4÷G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire\0" },
    load_after = {
      ["nvim-lspinstall"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    after = { "nvim-lspconfig" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\1\2ë\14\0\0\5\0T\0à\0014\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\0013\2\5\0002\3\0\0:\3\6\2:\2\a\0013\2\b\0002\3\0\0:\3\t\2:\2\n\0013\2\v\0003\3\f\0002\4\0\0:\4\r\3:\3\14\2:\2\15\1>\0\2\0014\0\0\0%\1\16\0>\0\2\0027\0\17\0002\1!\0003\2\19\0003\3\18\0:\3\20\2\16\3\0\0%\4\21\0>\3\2\2:\3\22\2;\2\1\0013\2\24\0003\3\23\0:\3\20\2\16\3\0\0%\4\25\0>\3\2\2:\3\22\2;\2\2\0013\2\26\0\16\3\0\0%\4\27\0>\3\2\2:\3\22\2;\2\3\0013\2\28\0\16\3\0\0%\4\29\0>\3\2\2:\3\22\2;\2\4\0013\2\30\0\16\3\0\0%\4\31\0>\3\2\2:\3\22\2;\2\5\0013\2 \0\16\3\0\0%\4!\0>\3\2\2:\3\22\2;\2\6\0013\2\"\0\16\3\0\0%\4#\0>\3\2\2:\3\22\2;\2\a\0013\2$\0\16\3\0\0%\4%\0>\3\2\2:\3\22\2;\2\b\0013\2&\0\16\3\0\0%\4'\0>\3\2\2:\3\22\2;\2\t\0013\2(\0\16\3\0\0%\4'\0>\3\2\2:\3\22\2;\2\n\0013\2)\0\16\3\0\0%\4*\0>\3\2\2:\3\22\2;\2\v\0013\2+\0\16\3\0\0%\4,\0>\3\2\2:\3\22\2;\2\f\0013\2-\0\16\3\0\0%\4.\0>\3\2\2:\3\22\2;\2\r\0013\2/\0\16\3\0\0%\0040\0>\3\2\2:\3\22\2;\2\14\0013\0021\0\16\3\0\0%\0042\0>\3\2\2:\3\22\2;\2\15\0013\0023\0\16\3\0\0%\0044\0>\3\2\2:\3\22\2;\2\16\0013\0025\0\16\3\0\0%\0046\0>\3\2\2:\3\22\2;\2\17\0013\0027\0\16\3\0\0%\0048\0>\3\2\2:\3\22\2;\2\18\0013\0029\0\16\3\0\0%\4:\0>\3\2\2:\3\22\2;\2\19\0013\2;\0\16\3\0\0%\4<\0>\3\2\2:\3\22\2;\2\20\0013\2=\0\16\3\0\0%\4>\0>\3\2\2:\3\22\2;\2\21\0013\2?\0\16\3\0\0%\4@\0>\3\2\2:\3\22\2;\2\22\0013\2A\0\16\3\0\0%\4B\0>\3\2\2:\3\22\2;\2\23\0013\2C\0\16\3\0\0%\4D\0>\3\2\2:\3\22\2;\2\24\0013\2E\0\16\3\0\0%\4F\0>\3\2\2:\3\22\2;\2\25\0013\2G\0\16\3\0\0%\4H\0>\3\2\2:\3\22\2;\2\26\0013\2I\0\16\3\0\0%\4J\0>\3\2\2:\3\22\2;\2\27\0013\2K\0\16\3\0\0%\4L\0>\3\2\2:\3\22\2;\2\28\0013\2M\0\16\3\0\0%\4N\0>\3\2\2:\3\22\2;\2\29\0013\2O\0\16\3\0\0%\4\n\0>\3\2\2:\3\22\2;\2\30\0013\2P\0\16\3\0\0%\4Q\0>\3\2\2:\3\22\2;\2\31\0013\2R\0\16\3\0\0%\4S\0>\3\2\2:\3\22\2;\2 \1G\0\1\0\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\23nvim_tree_callback\21nvim-tree.config\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\3\16auto_resize\1\tside\tleft\nwidth\3\30\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\23ignore_ft_on_setup\1\0\b\15update_cwd\1\16open_on_tab\2\15auto_close\2\18open_on_setup\1\20lsp_diagnostics\2\18disable_netrw\2\18hijack_cursor\1\17hijack_netrw\2\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2œ\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\14highlight\1\0\2\21use_languagetree\2\venable\2\21ensure_installed\1\0\0\1\2\0\0\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\1\2O\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\27colorscheme tokyonight\bcmd\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/trouble.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-easy-align"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    needs_bufread = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0'\1ú\0:\1\1\0G\0\1\0\21Illuminate_delay\6g\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-matchup"] = {
    after_files = { "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-matchup"
  },
  ["vim-parinfer"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/vim-parinfer"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/vim-wakatime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2T\0\0\2\0\5\0\n4\0\0\0'\1ô\1:\1\1\0004\0\2\0%\1\3\0>\0\2\0027\0\4\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\15timeoutlen\6g\0" },
    loaded = true,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: tokyonight.nvim
time([[Setup for tokyonight.nvim]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\3\0\0044\0\0\0%\1\2\0:\1\1\0G\0\1\0\nnight\21tokyonight_style\6g\0", "setup", "tokyonight.nvim")
time([[Setup for tokyonight.nvim]], false)
-- Setup for: fzf-lua
time([[Setup for fzf-lua]], true)
try_loadstring('\27LJ\1\2¨\3\0\0\5\0\16\0+4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\b\0%\3\t\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\n\0%\3\v\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\f\0%\3\r\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\14\0%\3\15\0002\4\0\0>\0\5\1G\0\1\0 :FzfLua lsp_references <CR>\15<leader>lr\30:FzfLua git_branches <CR>\15<leader>gm\17:FzfLua <CR>\15<leader>ft\25:FzfLua buffers <CR>\15<leader>fb\29:FzfLua grep_visual <CR>\15<leader>fv":FzfLua live_grep_native <CR>\15<leader>fs\23:FzfLua files <CR>\15<leader>ff\6n\bmap\0', "setup", "fzf-lua")
time([[Setup for fzf-lua]], false)
time([[packadd for fzf-lua]], true)
vim.cmd [[packadd fzf-lua]]
time([[packadd for fzf-lua]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2G\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\24:NvimTreeFocus <CR>\14<leader>p\6n\bmap\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: vim-easy-align
time([[Setup for vim-easy-align]], true)
try_loadstring("\27LJ\1\2I\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\26<Plug>(EasyAlign)<CR>\14<leader>a\6v\bmap\0", "setup", "vim-easy-align")
time([[Setup for vim-easy-align]], false)
time([[packadd for vim-easy-align]], true)
vim.cmd [[packadd vim-easy-align]]
time([[packadd for vim-easy-align]], false)
-- Setup for: neoformat
time([[Setup for neoformat]], true)
try_loadstring("\27LJ\1\2D\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\20:Neoformat <CR>\15<leader>wf\6n\bmap\0", "setup", "neoformat")
time([[Setup for neoformat]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2ˆ\2\0\0\5\0\n\0\0254\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\b\0%\3\t\0002\4\0\0>\0\5\1G\0\1\0\29:Gitsigns prev_hunk <CR>\15<leader>gk\29:Gitsigns next_hunk <CR>\15<leader>gj#:Gitsigns undo_stage_hunk <CR>\15<leader>gS\30:Gitsigns stage_hunk <CR>\15<leader>gs\6n\bmap\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
-- Setup for: todo-comments.nvim
time([[Setup for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2F\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\22:TodoLocList <CR>\15<leader>jo\6n\bmap\0", "setup", "todo-comments.nvim")
time([[Setup for todo-comments.nvim]], false)
time([[packadd for todo-comments.nvim]], true)
vim.cmd [[packadd todo-comments.nvim]]
time([[packadd for todo-comments.nvim]], false)
-- Setup for: nvim-spectre
time([[Setup for nvim-spectre]], true)
try_loadstring("\27LJ\1\2Ö\2\0\0\5\0\v\0\0254\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0%\1\6\0%\2\a\0%\3\b\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\t\0%\3\n\0002\4\0\0>\0\5\1G\0\1\0003:lua require(\"spectre\").open_file_search()<CR>\15<leader>rp.:lua require(\"spectre\").open_visual()<CR>\15<leader>rv\6v@:lua require(\"spectre\").open_visual({select_word=true})<CR>\15<leader>rw':lua require(\"spectre\").open()<CR>\14<leader>R\6n\bmap\0", "setup", "nvim-spectre")
time([[Setup for nvim-spectre]], false)
time([[packadd for nvim-spectre]], true)
vim.cmd [[packadd nvim-spectre]]
time([[packadd for nvim-spectre]], false)
-- Setup for: vim-fugitive
time([[Setup for vim-fugitive]], true)
try_loadstring("\27LJ\1\2Ø\1\0\0\5\0\n\0\0254\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\b\0%\3\t\0002\4\0\0>\0\5\1G\0\1\0\18:Git pull<CR>\15<leader>gl\18:Git push<CR>\15<leader>gp\20:Git commit<CR>\15<leader>gc\19:Git blame<CR>\15<leader>gb\6n\bmap\0", "setup", "vim-fugitive")
time([[Setup for vim-fugitive]], false)
time([[packadd for vim-fugitive]], true)
vim.cmd [[packadd vim-fugitive]]
time([[packadd for vim-fugitive]], false)
-- Setup for: trouble.nvim
time([[Setup for trouble.nvim]], true)
try_loadstring("\27LJ\1\2H\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\24:TroubleToggle <CR>\15<leader>jt\6n\bmap\0", "setup", "trouble.nvim")
time([[Setup for trouble.nvim]], false)
time([[packadd for trouble.nvim]], true)
vim.cmd [[packadd trouble.nvim]]
time([[packadd for trouble.nvim]], false)
-- Setup for: nvim-comment
time([[Setup for nvim-comment]], true)
try_loadstring("\27LJ\1\2a\0\0\5\0\5\0\r4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\4\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\6v\24:CommentToggle <CR>\14<leader>/\6n\bmap\0", "setup", "nvim-comment")
time([[Setup for nvim-comment]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2?\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\1\2O\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15statusline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0'\1ú\0:\1\1\0G\0\1\0\21Illuminate_delay\6g\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2T\0\0\2\0\5\0\n4\0\0\0'\1ô\1:\1\1\0004\0\2\0%\1\3\0>\0\2\0027\0\4\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\15timeoutlen\6g\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: AutoSave.nvim
time([[Config for AutoSave.nvim]], true)
try_loadstring("\27LJ\1\2à\2\0\0\5\0\17\0\0264\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0004\2\3\0007\2\4\2\14\0\2\0T\3\1€)\2\1\0:\2\6\1%\2\a\0004\3\b\0007\3\t\3%\4\n\0>\3\2\2$\2\3\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0002\3\0\0:\3\15\2:\2\16\1>\0\2\1G\0\1\0\15conditions\20filetype_is_not\1\0\2\15modifiable\2\vexists\2\vevents\1\2\0\0\16InsertLeave\22execution_message\r%H:%M:%S\rstrftime\afn\20autosaved at : \fenabled\1\0\3\20on_off_commands\2\22write_all_buffers\1 clean_command_line_interval\3Ä\19\14auto_save\6g\nsetup\rautosave\frequire\0", "config", "AutoSave.nvim")
time([[Config for AutoSave.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CommentToggle lua require("packer.load")({'nvim-comment'}, { cmd = "CommentToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'vim-parinfer'}, { ft = "clojure" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup', 'tokyonight.nvim', 'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim', 'nvim-colorizer.lua', 'nvim-lspinstall'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'lspkind-nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
