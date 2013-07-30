" Changing default leader key
let mapleader=","

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Open NerdTree with Ctrl+n
map <C-n> <plug>NERDTreeTabsToggle<CR>

" Clear search hightlights when space is pressed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Ctrl-l to hashrocket
imap <C-l> <Space>=><Space>

" Changing tabs more easily
nnoremap <Leader>a :tabprevious<CR>
nnoremap <Leader>d :tabnext<CR>

" Expanding Zen Coding using Shift + Enter
let g:user_zen_expandabbr_key = "<S-return>"

" Write, quit, open new tab and forque quit more easily
map <Leader>t <Esc>:tabe<CR>
map <Leader>w <Esc>:w<CR>
map <Leader>x <Esc>:wq<CR>
map <Leader>q <Esc>:q<CR>
map <Leader>fq <Esc>:q!<CR>

" Change between buffers using movement keys
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
