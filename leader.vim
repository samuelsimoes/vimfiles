" Changing default leader key
let mapleader=","
let maplocalleader='-'

nnoremap <localleader>r :call PipeSameLine()<CR>

" Changes the selected word occurrences in the current file
map <Leader>o :call ChangeSelected()<CR>

nnoremap <leader>ju :call TagContentOwnLine()<CR>

" Buffer usage
map <Leader>b :enew<CR>
map <Leader>bq :bd %<CR>
map <Leader>s :b #<CR>
map <Leader>bfq <Esc>:bd! %<CR>
map <Leader>wq <Esc>:q<CR>

" Find current file on NERDTree
nnoremap <leader>nf :NERDTreeFind<CR>

nnoremap <leader>a :Ack!<Space>

" Copy filepath
nnoremap <leader>f :!echo -n % \| pbcopy<cr>

nnoremap <Leader>mr :CtrlPMRU<CR>
nnoremap <Leader>mp :CtrlPBuffer<CR>
nnoremap <Leader>mh :CtrlP <C-R>=expand('%:p:h')<CR><CR>

" Rename file
map <Leader>r :call Rename()<CR>
