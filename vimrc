set encoding=utf-8

set nocompatible
filetype on
filetype indent plugin on

let g:snipMate = {}
let g:snipMate.scope_aliases = {}

"NeoBundlnipMate = {} Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Packages
source ~/.vim/neobundle.vim

call neobundle#end()
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set list
set listchars=tab:\|\ ,trail:.

" Theme
colorscheme jellybeans

" Line Number
set number

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

source ~/.vim/functions.vim
source ~/.vim/keymap.vim
source ~/.vim/extras.vim

runtime bundle/matchit/plugin/matchit.vim
