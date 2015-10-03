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
nnoremap <leader>nf :NERDTreeTabsFind<CR>

" Copy filepath
nnoremap <leader>f :!echo -n % \| pbcopy<cr>

" Copy and paste from external clipboard with C and P
map <Leader>c y:call system("pbcopy", getreg(""))<CR>
map <Leader>p :call setreg("d", system("pbpaste"))<CR>"dp

nnoremap <Leader>mr :CtrlPMRU<CR>

map <Leader>8 :call youcompleteme#EnableCursorMovedAutocommands()<CR>
map <Leader>9 :call youcompleteme#DisableCursorMovedAutocommands()<CR>

" Rename file
map <Leader>r :call Rename()<CR>
