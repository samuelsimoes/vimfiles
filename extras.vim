" Detect indent on open file
autocmd BufReadPost * :DetectIndent

" On save fix whitespaces
autocmd BufWritePost * :silent! %s/\s\+$//e

" On save remove duplicate tabs
autocmd BufWritePost * :CloseDupTabs

" More larger NERDTree buffer
let NERDTreeWinSize=37

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
