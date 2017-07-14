set encoding=utf-8

set nocompatible
filetype on
filetype indent plugin on

let g:snipMate = {}
let g:snipMate.scope_aliases = {}

let g:vimfiles_folder = expand('<sfile>:p:h')

" Setup the Plug plugin manager
if empty(glob(vimfiles_folder . '/autoload/plug.vim'))
  execute 'silent !curl -fLo ' . vimfiles_folder . '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  execute 'autocmd VimEnter * PlugInstall --sync | source ' . vimfiles_folder . '/vimrc'
endif

call plug#begin(vimfiles_folder . '/plugged')
execute 'source ' . vimfiles_folder . '/plug.vim'
call plug#end()

set list
set listchars=tab:\|\ ,trail:.

" Theme
colorscheme jellybeans

" Right padding
set foldcolumn=1

" Syntax highlighting options
syntax on
set t_Co=256"

" Search configs
set incsearch
set hlsearch

" No backup files
set nobackup
set nowritebackup
set noswapfile

" Indent configs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

source ~/.vim/abbreviations.vim
source ~/.vim/functions.vim
source ~/.vim/leader.vim
source ~/.vim/keymap.vim
source ~/.vim/extras.vim
source ~/.vim/gui.vim
