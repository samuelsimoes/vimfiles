" Detect indent on open file
autocmd BufReadPost * :DetectIndent

" On save fix whitespaces
autocmd BufWritePost * :FixWhitespace

" On save remove duplicate tabs
autocmd BufWritePost * :CloseDupTabs

" More larger NERDTree buffer
let NERDTreeWinSize=37

" Select the current file on NERDTree on new buffer opening
let g:nerdtree_tabs_autofind=1

let g:snipMate.scope_aliases['javascript'] = 'javascript,marionette,backbone'
let g:snipMate.scope_aliases['html'] = 'html,bootstrap'

" Syntastic Configs
let g:syntastic_javascript_checkers = ['jsl']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Rubo command for check the Ruby style
command Rubo :SyntasticCheck rubocop

let g:syntastic_mode_map = { 'mode': 'active',
                                   \ 'passive_filetypes': [
                                     \ 'html',
                                     \ 'cucumber',
                                     \ 'sass',
                                     \ 'scss',
                                     \ 'css',
                                     \ 'haml'
                                   \ ] }

" Ignoring in ctrl-p the vendor things
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|public/uploads|tmp/cache)$'

" ag
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Use ag in Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ctrlp_abbrev = {
  \ 'gmode': 'i',
  \ 'abbrevs': [
    \ {
      \ 'pattern': '^cdh',
      \ 'expanded': '@cd %:h',
      \ 'mode': 'pfz'
    \ }
  \ ]
  \ }

let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

let g:dash_map = {
    \ 'javascript' : []
    \ }

" Always show the status line
set laststatus=2

"Format the status line
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file"

" Rename command
command! -bar -nargs=1 -bang -complete=file Rename :
  \ let s:file = expand('%:p') |
  \ setlocal modified |
  \ keepalt saveas<bang> <args> |
  \ if s:file !=# expand('%:p') |
  \   call delete(s:file) |
  \ endif |
  \ unlet s:file

" Eliminating delays on exit the insert mode
set timeoutlen=1000 ttimeoutlen=0

" Shortcut to access the current buffered file folder
cabbr <expr> %% expand('%:p:h')

let g:rails_projections = {
      \ "spec/factories/*.rb": {
      \   "command": "factory",
      \  "affinity": "model"
      \ },
      \ "spec/support/turnip/*_steps.rb": {
      \   "command": "steps",
      \  "affinity": "model"
      \ },
      \ "app/enumerations/*.rb": {
      \   "command": "enum"
      \ },
      \ "app/services/*.rb": {
      \   "command": "service"
      \ },
      \ "app/workers/*.rb": {
      \   "command": "worker"
      \ },
      \ "app/policies/*_policy.rb": {
      \   "command": "policy"
      \ }}
