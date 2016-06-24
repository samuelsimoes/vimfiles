" Dont remove the identation when leave insert mode
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Open NerdTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-space> :VimDrawer<CR>

" Clear search hightlights when space is pressed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Expanding Emmet using Ctrl + E
let g:user_emmet_expandabbr_key = "<C-e>"

" Trigger EasyMotion with backslash
let g:EasyMotion_leader_key = '\'

let g:vim_g_command = "G"

map ]q :cnext<CR>
map [q :cprev<CR>

let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<Down>']

let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
  \ 'PrtHistory(-1)':       ['<c-j>'],
  \ 'PrtHistory(1)':        ['<c-k>']
\ }

nnoremap * :keepjumps normal! mi*`i<CR>

" Triggering the completion using YouCompleteMe
imap <C-n> <C-X><C-U>

noremap <leader>c y:call system("clip", getreg(""))<CR>

nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>
