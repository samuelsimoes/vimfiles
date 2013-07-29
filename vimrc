set encoding=utf-8

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle Packages
source ~/.vim/vundle
source ~/.vim/keymap.vim
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/gui.vim
endif

" Theme
colorscheme jellybeans

" Statusline setup
set statusline=%f\  " Filename

" Line Number
set number

" Always show the status line
set laststatus=2

" Search configs
set incsearch
set hlsearch

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

filetype plugin indent on
