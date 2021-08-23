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
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\1\2µ\20\0\0\b\0l\0›\0024\0\0\0%\1\1\0>\0\2\0027\1\2\0004\2\3\0)\3\2\0:\3\4\0024\2\5\0'\3\0\0:\3\6\0024\2\5\0'\3\1\0:\3\a\0024\2\5\0'\3\0\0:\3\b\0024\2\5\0003\3\n\0:\3\t\0024\2\5\0'\3\0\0:\3\v\0024\2\5\0'\3\1\0:\3\b\0024\2\5\0'\3\1\0:\3\f\0024\2\5\0'\3\1\0:\3\r\0024\2\5\0'\3\1\0:\3\14\0024\2\5\0'\3\1\0:\3\15\0024\2\5\0'\3\1\0:\3\16\0024\2\5\0'\3\0\0:\3\17\0024\2\5\0'\3\0\0:\3\18\0024\2\5\0'\3\1\0:\3\19\0024\2\5\0003\3\21\0:\3\20\0024\2\5\0'\3\0\0:\3\22\0024\2\5\0004\3\24\0007\3\25\0033\4\26\0004\5\27\0007\5\28\5%\6\29\0'\aè\3>\5\3\2;\5\2\4>\3\2\2:\3\23\0024\2\5\0%\3\31\0:\3\30\0024\2\5\0'\3\0\0:\3 \0024\2\5\0'\3\1\0:\3!\0024\2\5\0'\3\25\0:\3\"\0024\2\5\0003\3$\0:\3#\0024\2\5\0003\3&\0003\4'\0:\4(\0032\4\0\0:\4)\3:\3%\0024\2\5\0002\3 \0003\4,\0003\5+\0:\5-\4\16\5\1\0%\6.\0>\5\2\2:\5/\4;\4\1\0033\0041\0003\0050\0:\5-\4\16\5\1\0%\0062\0>\5\2\2:\5/\4;\4\2\0033\0043\0\16\5\1\0%\0064\0>\5\2\2:\5/\4;\4\3\0033\0045\0\16\5\1\0%\0066\0>\5\2\2:\5/\4;\4\4\0033\0047\0\16\5\1\0%\0068\0>\5\2\2:\5/\4;\4\5\0033\0049\0\16\5\1\0%\6:\0>\5\2\2:\5/\4;\4\6\0033\4;\0\16\5\1\0%\6<\0>\5\2\2:\5/\4;\4\a\0033\4=\0\16\5\1\0%\6>\0>\5\2\2:\5/\4;\4\b\0033\4?\0\16\5\1\0%\6@\0>\5\2\2:\5/\4;\4\t\0033\4A\0\16\5\1\0%\6@\0>\5\2\2:\5/\4;\4\n\0033\4B\0\16\5\1\0%\6C\0>\5\2\2:\5/\4;\4\v\0033\4D\0\16\5\1\0%\6E\0>\5\2\2:\5/\4;\4\f\0033\4F\0\16\5\1\0%\6G\0>\5\2\2:\5/\4;\4\r\0033\4H\0\16\5\1\0%\6I\0>\5\2\2:\5/\4;\4\14\0033\4J\0\16\5\1\0%\6K\0>\5\2\2:\5/\4;\4\15\0033\4L\0\16\5\1\0%\6M\0>\5\2\2:\5/\4;\4\16\0033\4N\0\16\5\1\0%\6O\0>\5\2\2:\5/\4;\4\17\0033\4P\0\16\5\1\0%\6Q\0>\5\2\2:\5/\4;\4\18\0033\4R\0\16\5\1\0%\6S\0>\5\2\2:\5/\4;\4\19\0033\4T\0\16\5\1\0%\6U\0>\5\2\2:\5/\4;\4\20\0033\4V\0\16\5\1\0%\6W\0>\5\2\2:\5/\4;\4\21\0033\4X\0\16\5\1\0%\6Y\0>\5\2\2:\5/\4;\4\22\0033\4Z\0\16\5\1\0%\6[\0>\5\2\2:\5/\4;\4\23\0033\4\\\0\16\5\1\0%\6]\0>\5\2\2:\5/\4;\4\24\0033\4^\0\16\5\1\0%\6_\0>\5\2\2:\5/\4;\4\25\0033\4`\0\16\5\1\0%\6a\0>\5\2\2:\5/\4;\4\26\0033\4b\0\16\5\1\0%\6c\0>\5\2\2:\5/\4;\4\27\0033\4d\0\16\5\1\0%\6e\0>\5\2\2:\5/\4;\4\28\0033\4f\0\16\5\1\0%\6g\0>\5\2\2:\5/\4;\4\29\0033\4h\0\16\5\1\0%\6i\0>\5\2\2:\5/\4;\4\30\0033\4j\0\16\5\1\0%\6k\0>\5\2\2:\5/\4;\4\31\3:\3*\2G\0\1\0\16toggle_help\1\0\1\bkey\6?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a}c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\t<C->\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\23nvim_tree_bindings\vfolder\bgit\1\0\a\runstaged\bâœ—\fdeleted\bï‘˜\14untracked\bâ˜…\frenamed\bâžœ\runmerged\bîœ§\fignored\bâ—Œ\vstaged\bâœ“\1\0\2\fdefault\bî˜’\fsymlink\bï’\20nvim_tree_icons\1\0\4\ffolders\3\1\18folder_arrows\3\1\bgit\3\1\nfiles\3\1\25nvim_tree_show_icons\20nvim_tree_width\25nvim_tree_update_cwd\23nvim_tree_tab_open\tleft\19nvim_tree_side\6 \brep\vstring\1\4\0\0\16:t:gs?$?/..\0\r?:gs?^??\vconcat\ntable#nvim_tree_root_folder_modifier\27nvim_tree_quit_on_open\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\29nvim_tree_indent_markers\27nvim_tree_hijack_netrw%nvim_tree_highlight_opened_files\28nvim_tree_hide_dotfiles\24nvim_tree_gitignore\21nvim_tree_git_hl\21nvim_tree_follow\28nvim_tree_disable_netrw\24nvim_tree_auto_open\1\2\0\0\14dashboard\29nvim_tree_auto_ignore_ft\25nvim_tree_auto_close\27nvim_tree_allow_resize\27nvim_tree_add_trailing\6g\18termguicolors\bopt\23nvim_tree_callback\21nvim-tree.config\frequire\0" },
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
  ["telescope.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\27colorscheme tokyonight\bcmd\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gnome/.local/share/nvim/site/pack/packer/opt/tokyonight.nvim"
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
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: nvim-comment
time([[Setup for nvim-comment]], true)
try_loadstring("\27LJ\1\2a\0\0\5\0\5\0\r4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\4\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\6v\24:CommentToggle <CR>\14<leader>/\6n\bmap\0", "setup", "nvim-comment")
time([[Setup for nvim-comment]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2ˆ\2\0\0\5\0\n\0\0254\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\b\0%\3\t\0002\4\0\0>\0\5\1G\0\1\0\29:Gitsigns prev_hunk <CR>\15<leader>gk\29:Gitsigns next_hunk <CR>\15<leader>gj#:Gitsigns undo_stage_hunk <CR>\15<leader>gu\30:Gitsigns stage_hunk <CR>\15<leader>gs\6n\bmap\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2G\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\24:NvimTreeFocus <CR>\14<leader>p\6n\bmap\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\1\2º\2\0\0\5\0\f\0\0314\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\b\0%\3\t\0002\4\0\0>\0\5\0014\0\0\0%\1\1\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0!:Telescope git_branches <CR>\15<leader>gm\20:Telescope <CR>\15<leader>ft\28:Telescope buffers <CR>\15<leader>fb\30:Telescope live_grep <CR>\15<leader>fs\31:Telescope find_files <CR>\15<leader>ff\6n\bmap\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: neoformat
time([[Setup for neoformat]], true)
try_loadstring("\27LJ\1\2D\0\0\5\0\4\0\a4\0\0\0%\1\1\0%\2\2\0%\3\3\0002\4\0\0>\0\5\1G\0\1\0\20:Neoformat <CR>\15<leader>wf\6n\bmap\0", "setup", "neoformat")
time([[Setup for neoformat]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15statusline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: AutoSave.nvim
time([[Config for AutoSave.nvim]], true)
try_loadstring("\27LJ\1\2à\2\0\0\5\0\17\0\0264\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0004\2\3\0007\2\4\2\14\0\2\0T\3\1€)\2\1\0:\2\6\1%\2\a\0004\3\b\0007\3\t\3%\4\n\0>\3\2\2$\2\3\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0002\3\0\0:\3\15\2:\2\16\1>\0\2\1G\0\1\0\15conditions\20filetype_is_not\1\0\2\15modifiable\2\vexists\2\vevents\1\2\0\0\16InsertLeave\22execution_message\r%H:%M:%S\rstrftime\afn\20autosaved at : \fenabled\1\0\3\20on_off_commands\2\22write_all_buffers\1 clean_command_line_interval\3Ä\19\14auto_save\6g\nsetup\rautosave\frequire\0", "config", "AutoSave.nvim")
time([[Config for AutoSave.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file CommentToggle lua require("packer.load")({'nvim-comment'}, { cmd = "CommentToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'vim-parinfer'}, { ft = "clojure" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-colorizer.lua', 'nvim-treesitter', 'nvim-lspinstall'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup', 'packer.nvim', 'tokyonight.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'lspkind-nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
