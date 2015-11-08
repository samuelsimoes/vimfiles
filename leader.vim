" Changing default leader key
let mapleader=","
let maplocalleader='-'

" Ctrl-l to hashrocket
imap <C-l> <Space>=><Space>

" Buffer usage
map <Leader>a :bprevious<CR>
map <Leader>d :bnext<CR>
map <Leader>b :enew<CR>
map <Leader>q :Bclose<CR>
map <Leader>s :b #<CR>
map <Leader>fq <Esc>:Bclose!<CR>

" New tab
map <Leader>t <Esc>:tabe<CR>

" Close Window
map <Leader>tq <Esc>:q<CR>

" Write, quit, open new tab and forque quit more easily
map <Leader>w <Esc>:w<CR>
map <Leader>x <Esc>:wq<CR>

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
