" Detect indent on open file
autocmd BufReadPost * :DetectIndent

" On save fix whitespaces
autocmd BufWritePost * :FixWhitespace

" Space after colon in Sass/Scss files
let g:user_zen_settings = {
\  'sass' : {
\    'filters' : 'fc',
\  },
\  'scss' : {
\    'filters' : 'fc',
\  }
\}
