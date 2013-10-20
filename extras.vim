" Detect indent on open file
autocmd BufReadPost * :DetectIndent

" On save fix whitespaces
autocmd BufWritePost * :FixWhitespace

" On save remove duplicate tabs
autocmd BufWritePost * :CloseDupTabs

" More larger NERDTree buffer
let NERDTreeWinSize=37

" Syntastic Configs
let g:syntastic_javascript_checkers = ['jsl']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_mode_map = { 'mode': 'active',
                                   \ 'passive_filetypes': [
                                     \ 'html',
                                     \ 'cucumber',
                                     \ 'sass',
                                     \ 'scss',
                                     \ 'css'
                                   \ ] }
