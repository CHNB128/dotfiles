""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/vim-easy-align'
  Plug 'sheerun/vim-polyglot'
  " JavaScript bundle for vim
  " this bundle provides syntax highlighting and improved indentation.
  Plug 'pangloss/vim-javascript'
  Plug 'junegunn/limelight.vim'
  Plug 'dylanaraps/wal'
  " Fuzz finder
  Plug '/usr/bin/fzf'
  Plug 'junegunn/fzf.vim'
  " Debug
  "Plug 'vim-vdebug/vdebug'
  " Bookmark
  Plug 'MattesGroeger/vim-bookmarks'
  " Minimap
  Plug 'severin-lemaignan/vim-minimap'
  " Color hightlight
  Plug 'ap/vim-css-color'
  "
  Plug 'tpope/vim-eunuch'
  " File manager
  Plug 'scrooloose/nerdtree'
  " Clojure
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
  Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
  Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
  Plug 'vim-scripts/paredit.vim', { 'for': 'clojure' }
  " Color theme
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'powerline/powerline'
  " Nuake
  Plug 'lenovsky/nuake'
  " Vue
  Plug 'posva/vim-vue'
  Plug 'sekel/vim-vue-syntastic'
  " Syntacsis highlight
  Plug 'vim-syntastic/syntastic'
  " Code search
  Plug 'brooth/far.vim'
  " Ident vertical line
  Plug 'Yggdroot/indentLine'
  " Start screen
  Plug 'mhinz/vim-startify'
  " Complementions
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  " html
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim'
  Plug 'AndrewRadev/tagalong.vim'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utils
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Search :Ag
command! -range SearchRange <line1>,<line2> call fzf#vim#ag(s:get_visual_selection())
command! -range SearchWord <line1>,<line2> call fzf#vim#ag(expand("<cword>"))
vnoremap <silent> <C-f> :SearchRange<CR>
nnoremap <silent> <C-f> :SearchWord<CR>
nnoremap <silent> <space>c :Commands <CR>
nnoremap <silent> <space>s :Maps <CR>
nnoremap <silent> <space>b :Buffers <CR>
nnoremap <silent> <space>f :Files <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Replace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>r :s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! ReloadConfig :so $HOME/.config/nvim/init.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyAlign
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Limelight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"let g:limelight_conceal_ctermfg = 240
"autocmd VimEnter * Limelight
"let g:limelight_priority = -1
"let g:limelight_paragraph_span = 1
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" switch windwo with arrows
map <silent> <M-Up> :wincmd k<CR>
map <silent> <M-Down> :wincmd j<CR>
map <silent> <M-Right> :wincmd l<CR>
map <silent> <M-Left> :wincmd h<CR>

nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <silent> <C-S> :update<CR>
nnoremap <silent> <C-Z> <C-O> :undo<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy motion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bookmark_auto_save_file = $HOME .'/.config/nvim/.bookmarks'
" To copy to clipboard
set clipboard=unnamedplus
" Search
let g:CoolTotalMatches = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show GTM in status bar
let g:gtm_plugin_status_enabled = 1

function! AirlineInit()
  if exists('*GTMStatusline')
    call airline#parts#define_function('gtmstatus', 'GTMStatusline')
    let g:airline_section_b = airline#section#create([g:airline_section_b, ' ', '[', 'gtmstatus', ']'])
  endif
endfunction
autocmd User AirlineAfterInit call AirlineInit()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']
let g:syntastic_clojure_checkers = ['eastwood']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Complementions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color cheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define color sheme
color dracula
" Set color sheme theme
set bg=dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IdentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_color_term = 239
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight search matches
set hlsearch
" search while characters are entered
set incsearch
" No highlight serach result on ESC
noremap <silent> <ESC> :noh <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trim trailing space on save
autocmd BufWritePre * :%s/\s\+$//e
" Mouse support
set mouse=a
" Automatically update a file if it is changed externally
set autoread
" Height of the command bar
set cmdheight=2
" Line number
set number relativenumber
" Show line under cursor
set cursorline
" show last command in the bottom right
set showcmd
" always show current position
set ruler
" Wrap line at 80 char positioned
set colorcolumn=80
" show matching braces
set showmatch
" Enable syntax highlighting
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Word wraping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! WordWrapEnable :set wrap
command! WordWrapDisable :set nowrap
" wrap only at valid characters
set linebreak
" prevent vim from inserting linebreaks
set textwidth=0
" in newly entered text
set wrapmargin=0
" set no wrap by default
set nowrap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File ident
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UTF-8 encoding and en_US as default encoding/language
set encoding=utf-8
" Define standard filetype
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
" recognize .md files as markdown files
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" enable spell-checking for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell
" enable filetype specific indentation
" enable filetype specific indentation
filetype on
filetype plugin on
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Characte ident
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ident hidden symvols
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
set list
" modern backspace behavior
set backspace=indent,eol,start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab size
set tabstop=2
set softtabstop=0
" Dont use actual `tab` character
set expandtab
set shiftwidth=2
set smarttab
set autoindent
" does the right thing (mostly) in programs
set smartindent
" stricter rules for C programs
set cindent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nuake
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <M-CR> :Nuake<CR>
inoremap <M-CR> <C-\><C-n>:Nuake<CR>
tnoremap <M-CR> <C-\><C-n>:Nuake<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File autosave
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autowrite
augroup AutoWrite
  autocmd! BufLeave * :write
  autocmd! BufLeave * :update
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <A-TAB> :NERDTreeToggle <CR>

let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | Startify | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('pug', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-closetag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filetypes = 'html,xhtml,phtml,vue,xml'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagalong
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagalong_filetypes = ['html', 'xml']
let g:tagalong_additional_filetypes = ['vue']
