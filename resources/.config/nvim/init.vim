""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/vim-easy-align'
  Plug 'easymotion/vim-easymotion'
  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " Plug 'sheerun/vim-polyglot'
  " JavaScript bundle for vim
  " this bundle provides syntax highlighting and improved indentation.
  Plug 'pangloss/vim-javascript'
  " Fuzz finder
  Plug '/usr/bin/fzf'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Bookmark
  Plug 'MattesGroeger/vim-bookmarks'
  " Color hightlight
  Plug 'ap/vim-css-color'
  " File manager
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  " Clojure
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
  Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
  Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
  Plug 'vim-scripts/paredit.vim', { 'for': 'clojure' }
  Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }
  " Color theme
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'powerline/powerline'
  " Syntacsis highlight
  Plug 'vim-syntastic/syntastic'
  " Ident vertical line
  Plug 'Yggdroot/indentLine'
  " Start screen
  Plug 'mhinz/vim-startify'
  " Complementions
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  " HTML,CSS
  Plug 'maksimr/vim-jsbeautify'
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim'
  Plug 'AndrewRadev/tagalong.vim'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utils
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! GetVisualSelection()
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
" Setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy motion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
" Emmet
let g:user_emmet_install_global = 0
" Airline
let g:airline_powerline_fonts = 1
" deoplete
let g:deoplete#enable_at_startup = 1
let g:indentLine_color_term = 239
" bookmarks
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_auto_save_file = $HOME .'/.config/nvim/.bookmarks'
set clipboard=unnamedplus
let g:CoolTotalMatches = 1
" NERDTree
let NERDTreeShowHidden=1
" Common
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Services
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Emmet
autocmd FileType html,css EmmetInstall
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
command! Search :Ag
command! -range SearchRange <line1>,<line2> call fzf#vim#ag(GetVisualSelection())
command! SearchWord call fzf#vim#ag(expand("<cexpr>"))
command! -bang CurrentBufferDirectoryFiles call fzf#vim#files(expand('%:p:h'), <bang>0)
" common
command! ReloadConfig :so $HOME/.config/nvim/init.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy motion
nmap s <Plug>(easymotion-overwin-f2)
" FZF
vnoremap <silent> <space>ss :SearchRange<CR>
nnoremap <silent> <space>sw :SearchWord<CR>
nnoremap <silent> <space>ss :Search<CR>
nnoremap <silent> <space>?c :Commands <CR>
nnoremap <silent> <space>?m :Maps <CR>
nnoremap <silent> <space>b :Buffers <CR>
nnoremap <silent> <space>ff :Files <CR>
nnoremap <silent> <space>fd :CurrentBufferDirectoryFiles <CR>
" Window managment
nnoremap <silent> <space>ww :update <CR>
nnoremap <silent> <space>wq :quit <CR>
nnoremap <silent> <space>ws :split <CR>
nnoremap <silent> <space>wv :vsplit <CR>
nnoremap <silent> <space>w<Up> :wincmd k<CR>
nnoremap <silent> <space>w<Down> :wincmd j<CR>
nnoremap <silent> <space>w<Right> :wincmd l<CR>
nnoremap <silent> <space>w<Left> :wincmd h<CR>
" Tabs
map <silent> <space>tn :tabnew<CR>
map <silent> <space>tj :tabprevious<CR>
map <silent> <space>tk :tabnext<CR>
map <silent> <space>tq :tabclose<CR>
" Replace
nnoremap <space>r :s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <space>R :%s/\<<C-r><C-w>\>//g<Left><Left>
" EasyAlign
xmap <silent> <space>a <Plug>(EasyAlign)
nmap <silent> <space>a <Plug>(EasyAlign)
" Commentary
map <silent> <space>/ :Commentary<CR>
" Bookmark
map <silent> <space>mm :BookmarkToggle<CR>
map <silent> <space>ma :BookmarkShowAll<CR>
map <silent> <space>mh :BookmarkPrev<CR>
map <silent> <space>ml :BookmarkNext<CR>
" Git
map <silent> <space>gu :GitGutterUndoHunk<CR>
map <silent> <space>gb :Gblame<CR>
" NERDTree
nnoremap <silent> <F3> :NERDTreeToggle <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color cheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define color sheme
color dracula
" Set color sheme theme
set bg=dark
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
" Define standard filetype
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
" File autosave
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autowrite
augroup AutoWrite
  autocmd! BufLeave * :write
  autocmd! BufLeave * :update
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto reload config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has ('autocmd') " Remain compatible with earlier versions
  augroup vimrc    " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-closetag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filetypes = 'html,xhtml,phtml,vue,xml'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagalong
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagalong_filetypes = ['html', 'xml']
let g:tagalong_additional_filetypes = ['vue']
