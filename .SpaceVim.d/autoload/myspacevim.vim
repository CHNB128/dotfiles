function! myspacevim#before() abort
  " Github options
  let g:github_dashboard = { 'username': 'yourgithubuser', 'password': $GITHUB_TOKEN }
  let g:gista#client#default_username = 'monkeyxite'
  " Bookmarks
  let g:bookmark_auto_save_file = $HOME .'/.config/nvim/.bookmarks'
  " To copy to clipboard
  set clipboard=unnamedplus
  " No highlight serach result on ESC
  noremap <silent> <ESC> :noh <CR>
  " Trim trailing space on save
  autocmd BufWritePre * :%s/\s\+$//e
  " Auto save on focuse lost
  set autowrite
  augroup AutoWrite
    autocmd! BufLeave * :write
    autocmd! BufLeave * :update
  augroup END
  " Custom maping
  call SpaceVim#custom#SPC('nore', ['w', 'q'], 'q', 'close-current-buffer', 1)
endfunction

