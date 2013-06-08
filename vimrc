set encoding=utf-8

" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

set list
set listchars=tab:\|\ ,trail:.

" Clear Crtl-P cache
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

" Change between buffers using movement keys
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>

" NERDtree configs
map <C-n> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0

" Ctrl P open new tab with NERDTree
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
\ }

" Changing default leader key
let mapleader=","

" Theme
colorscheme jellybeans

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line Number
set number

" Syntax highlighting options
syntax on
set t_Co=256

set laststatus=2

" Indent configs
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smarttab

" Search configs
set incsearch
set hlsearch

set nowrap

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Statusline setup
set statusline=%f\  " Filename
set statusline+=%c, " Cursor Column
set statusline+=%l/%L " Cursor Line/Total Lines
set statusline+=%{StatuslineTrailingSpaceWarning()}

" Pathogen
call pathogen#incubate()

" File Type Plugin
filetype plugin on


" GUI configs
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/gui.vim
endif

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Clear search hightlights when space is pressed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Zen Coding configs
let g:user_zen_expandabbr_key = '<S-return>'
let g:use_zen_complete_tag = 1

" Space after colon in Sass files
let g:user_zen_settings = {
\  'sass' : {
\    'filters' : 'fc',
\  }
\}

" Auto detect indent settings
autocmd BufReadPost * :DetectIndent

au BufNewFile,BufRead *.ejs set filetype=jst
