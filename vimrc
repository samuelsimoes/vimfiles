" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Changing default leader key
let mapleader=","

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line Number
set number

" Syntax highlighting options
syntax on
set t_Co=256

" Inicia a busca ao digitar
set incsearch
" Highlight na busca
set hlsearch

" Sem quebra automática de linha
set nowrap

" Statusline setup
set statusline=%f\  " Filename
set statusline+=%c, " Cursor Column
set statusline+=%l/%L " Cursor Line/Total Lines
set statusline+=%{StatuslineTrailingSpaceWarning()}

" Pathogen
call pathogen#incubate()
