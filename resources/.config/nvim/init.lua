cmd = vim.cmd
execute = vim.api.nvim_command
fn = vim.fn
g = vim.g
opt = vim.opt
map = vim.api.nvim_set_keymap

require('plugins')
-- Make space rock
map('', '<space>', '<leader>', {})
-- Windows
map('n', '<leader>ww', ':update <CR>', {})
map('n', '<leader>wq', ':quit <CR>', {})
map('n', '<leader>ws', ':split <CR>', {})
map('n', '<leader>wv', ':vsplit <CR>', {})
map('n', '<leader>wh', ':wincmd h <CR>', {})
map('n', '<leader>wj', ':wincmd j <CR>', {})
map('n', '<leader>wk', ':wincmd k <CR>', {})
map('n', '<leader>wl', ':wincmd l <CR>', {})
-- Tabs
map('n', '<leader>tn', ':tabnew <CR>', {})
map('n', '<tab>', ':tabnext <CR>', {})
map('n', '<s-tab>', ':tabprevious <CR>', {})
-- Remove hightlight on esc press
map('', '<esc>', ':noh <CR>', {})
-- Remove whitespace on save
cmd('autocmd BufWritePre * :%s/\\s\\+$//e')

opt.colorcolumn = '80'
opt.cursorline = true

-- Word wrap
opt.linebreak = true
opt.wrap = false
--
g.auto_save = true
g.tokyonight_style = "night"
opt.relativenumber = true
opt.syntax = 'enable'
-- Copy to clipboard
opt.clipboard = 'unnamedplus'
-- Mouse support
opt.mouse = 'a'
-- Tab size
opt.tabstop = 2
opt.softtabstop = 0
-- Dont use actual `tab` character
opt.expandtab = true
opt.shiftwidth = 2
opt.smarttab = true
opt.autoindent = true
-- does the right thing (mostly) in programs
opt.smartindent = true
-- stricter rules for C programs
opt.cindent = true

opt.termguicolors = true
