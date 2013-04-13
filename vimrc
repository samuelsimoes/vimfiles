set encoding=utf-8

" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

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
setlocal autoindent
" Limpar espaços caso a linha fique vazia
setlocal smarttab

" Configurações do MVIM
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
endif

" Zen Coding config
let g:user_zen_expandabbr_key = '<Tab>'
let g:use_zen_complete_tag = 1
