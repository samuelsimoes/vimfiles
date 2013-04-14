set encoding=utf-8

" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

set list
set listchars=tab:.\ ,trail:.

inoremap <esc> NO ESCAPE FOR YOU

" Limpar o cache do Crtl-P
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

" Trocar entre buffers
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>

" Ativar NERDtree
map <C-n> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0

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

set tabstop=4

" Inicia a busca ao digitar
set incsearch
" Highlight na busca
set hlsearch

" Sem quebra automática de linha
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

" Indentação automática ao pular de linha
set autoindent
" Limpar espaços caso a linha fique vazia
set smarttab

" Configurações do MVIM
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
endif

" Zen Coding config
let g:user_zen_expandabbr_key = '<C-e>'
let g:use_zen_complete_tag = 1

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Clear search hightlights when space is pressed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Ctrl P open new tab with NERDTree
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
\ }
