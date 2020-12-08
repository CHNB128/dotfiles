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
  " Strip trailing empty newlines
  " NOTE: has side effect, move cursor to end of file on call
  " autocmd BufWritePre * $put _ | $;?\(^\s*$\)\@!?+1,$d
  " Auto save on focuse lost
  set autowrite
  augroup AutoWrite
    autocmd! BufLeave * :write
    autocmd! BufLeave * :update
  augroup END
  " Custom maping
  call SpaceVim#custom#SPC('nore', ['w', 'q'], 'q', 'close-current-buffer', 1)
  " Fireplace #clojure
  call SpaceVim#custom#SPCGroupName(['u'], '+Fireplace')
  call SpaceVim#custom#SPC('nore' , ['u' , 'e'] , '%Eval'            , 'clojure-eval-file'    , 1)
  call SpaceVim#custom#SPC('nore' , ['u' , 'E'] , 'CljEval (all-ns)' , 'clojure-eval-all-ns'  , 1)
  call SpaceVim#custom#SPC('nore' , ['u' , 'r'] , 'Require'          , 'clojure-require-file' , 1)
  call SpaceVim#custom#SPC('nore' , ['u' , 'R'] , 'Require!'         , 'clojure-require-all'  , 1)
  call SpaceVim#custom#SPC('nore' , ['u' , 't'] , 'RunTests'         , 'clojure-test-ns'      , 1)
  call SpaceVim#custom#SPC('nore' , ['u' , 'T'] , 'RunAllTests'      , 'clojure-test-all'     , 1)
  call SpaceVim#custom#SPC('nore' , ['u' , 'c'] , 'Fireplace'        , 'clojure-connect'      , 1)
endfunction
