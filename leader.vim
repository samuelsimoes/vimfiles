" Changing default leader key
let mapleader=","
let maplocalleader='-'

" Ctrl-l to hashrocket
imap <C-l> <Space>=><Space>

" Changing tabs more easily
nnoremap <Leader>a :tabprevious<CR>
nnoremap <Leader>d :tabnext<CR>

" Write, quit, open new tab and forque quit more easily
map <Leader>t <Esc>:tabe<CR>
map <Leader>w <Esc>:w<CR>
map <Leader>x <Esc>:wq<CR>
map <Leader>q <Esc>:q<CR>
map <Leader>fq <Esc>:q!<CR>

" Find current file on NERDTree
nnoremap <leader>nf :NERDTreeFind<CR>

" Copy filepath
nnoremap <leader>f :!echo -n % \| pbcopy<cr>

nnoremap <Leader>mr :CtrlPMRU<CR>
nnoremap <Leader>mp :CtrlPBuffer<CR>

map <Leader>8 :call youcompleteme#EnableCursorMovedAutocommands()<CR>
map <Leader>9 :call youcompleteme#DisableCursorMovedAutocommands()<CR>

" Rename file
map <Leader>r :call Rename()<CR>
