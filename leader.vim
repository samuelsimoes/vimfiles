" Changing default leader key
let mapleader=","
let maplocalleader='-'

" Changes the selected word occurrences in the current file
map <Leader>o :call ChangeSelected()<CR>

nnoremap <leader>ju :call TagContentOwnLine()<CR>

" Buffer usage
map <Leader>a :bprevious<CR>
map <Leader>d :bnext<CR>
map <Leader>b :enew<CR>
map <Leader>bq :Bclose<CR>
map <Leader>s :b #<CR>
map <Leader>bfq <Esc>:Bclose!<CR>
map <Leader>wq <Esc>:q<CR>

" Find current file on NERDTree
nnoremap <leader>nf :NERDTreeFind<CR>

" Copy filepath
nnoremap <leader>f :!echo -n % \| pbcopy<cr>

nnoremap <Leader>mr :CtrlPMRU<CR>
nnoremap <Leader>mp :CtrlPBuffer<CR>
nnoremap <Leader>mh :CtrlP <C-R>=expand('%:p:h')<CR><CR>

" Rename file
map <Leader>r :call Rename()<CR>
