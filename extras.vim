" Sharing system clipboard
set clipboard=unnamed

" Disable the fucking error bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Detect indent on open file
autocmd BufReadPost * :DetectIndent

" On save fix whitespaces
autocmd BufWritePre * :FixWhitespace

" Autosave on focus lost and Autoread!
autocmd FocusLost * nested silent! :wa
set autoread

" Allows unsaved hidden buffers
set hidden

let g:snipMate.scope_aliases['javascript'] = 'javascript,marionette,backbone,react,jquery'
let g:snipMate.scope_aliases['html'] = 'html,bootstrap'
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
let g:snipMate.snippet_version = 1

" Syntastic Configs
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='!'
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

let g:ctrlp_working_path_mode = "w"

let g:ctrlp_abbrev = {
  \ 'gmode': 't',
  \ 'abbrevs': [
    \ {
      \ 'pattern': ',z',
      \ 'expanded': 'serializers/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',p',
      \ 'expanded': 'components/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',s',
      \ 'expanded': 'stores/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',r',
      \ 'expanded': 'services/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',a',
      \ 'expanded': 'actions/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',m',
      \ 'expanded': 'models/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',v',
      \ 'expanded': 'views/',
      \ 'mode': 'pfrz',
    \ },
    \ {
      \ 'pattern': ',c',
      \ 'expanded': 'controllers/',
      \ 'mode': 'pfrz',
    \ }
    \ ]
  \ }

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

" Preview on ack shouldn't create listed buffers
let g:ack_mappings = { "go": ":.cc <bar> setlocal nobuflisted<CR><C-W>j" }

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
      \   "command": "service",
      \   "template": "class %S\nend"
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

" For Gist plugin send the URL of generated Gist to clipboard
if system('uname')=~'Darwin'
  let g:gist_clip_command = 'pbcopy'
else
  let g:gist_clip_command = 'clip'
endif

" Pay attention when the line has more then 80 characters
set colorcolumn=80

let g:ycm_filetype_blacklist = {
  \ 'gitcommit': 1,
  \ 'text': 1
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

" Use emacs-style tab completion when selecting files, etc
set wildmode=longest,list

" Allows hide unsaved buffers
set hidden

" Relative numbers to navigation
set relativenumber

" Show commands
set showcmd

autocmd BufNewFile,BufRead *.css.erb set filetype=eruby.css

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'eruby' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx': 1
    \}
