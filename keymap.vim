" Changing default leader key
let mapleader=","

" Dont remove the identation when leave insert mode
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

" Insert new line without enter in insert mode
nnoremap <Leader>o ox<BS><Esc>
nnoremap <Leader>O Ox<BS><Esc>

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

" Expanding Emmet using Ctrl + E
let g:user_emmet_expandabbr_key = "<C-e>"

" Write, quit, open new tab and forque quit more easily
map <Leader>t <Esc>:tabe<CR>
map <Leader>w <Esc>:w<CR>
map <Leader>x <Esc>:wq<CR>
map <Leader>q <Esc>:q<CR>
map <Leader>fq <Esc>:q!<CR>

" Change between buffers using movement keys
" map <C-l> <C-w><Right>
" map <C-h> <C-w><Left>
" map <C-k> <C-w><Up>
" map <C-j> <C-w><Down>

" Trigger EasyMotion with backslash
let g:EasyMotion_leader_key = '\'

" Copy filepath
nnoremap <leader>f :!echo -n % \| pbcopy<cr>

" Copy and paste from external clipboard with C and P
map C y:call system("pbcopy", getreg(""))<CR>
map P :call setreg("d", system("pbpaste"))<CR>"dp

nnoremap <Leader>mr :CtrlPMRU<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>
