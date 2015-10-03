" To resolve MacVim, Tmux and Clipboard problem
if $TMUX == ''
  set clipboard+=unnamed
endif

" Disable the fucking error bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Detect indent on open file
autocmd BufReadPost * :DetectIndent

" On save fix whitespaces
autocmd BufWritePre * :FixWhitespace

let g:snipMate.scope_aliases['javascript'] = 'javascript,marionette,backbone'
let g:snipMate.scope_aliases['html'] = 'html,bootstrap'
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

" Syntastic Configs
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
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

" ctrlp-py-matcher is x22 times faster than default CtrpP matcher written vimscript
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Use ag in Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Always show the status line
set laststatus=2

"Format the status line
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column"

" Eliminating delays on exit the insert mode
set timeoutlen=1000 ttimeoutlen=0

" Shortcut to access the current buffered file folder
cabbr <expr> @ expand('%:p:h')

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
      \   "command": "enum",
      \   "template": "class %S < EnumerateIt::Base\n  associate_values :\nend"
      \ },
      \ "app/services/*.rb": {
      \   "command": "service"
      \ },
      \ "app/serializers/*_serializer.rb": {
      \   "command": "serializer",
      \   "template": "class %SSerializer < ActiveModel::Serializer\nend",
      \  "affinity": "model"
      \ },
      \ "app/workers/*.rb": {
      \   "command": "worker"
      \ },
      \ "app/policies/*_policy.rb": {
      \   "command": "policy",
      \   "template": "class %SPolicy\nend"
      \ }}

" For Gist plugin send the URL of generated Gist to clipboard in Mac
let g:gist_clip_command = 'pbcopy'

" Pay attention when the line has more then 80 characters
set colorcolumn=80

let g:ycm_filetype_blacklist = {
  \ 'gitcommit': 1
\ }
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'javascript': 0,
  \ 'ruby': 0,
  \ 'eruby': 0
\ }
let g:ycm_cache_omnifunc = 0
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" Rename file
map <Leader>r :call Rename()<CR>

" Use emacs-style tab completion when selecting files, etc
set wildmode=longest,list

let g:snipMate = {}
let g:snipMate.override = 1
