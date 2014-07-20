set encoding=utf-8

set nocompatible
filetype off

"NeoBundle Scripts-----------------------------
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

source ~/.vim/keymap.vim
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/gui.vim
endif

set list
set listchars=tab:\|\ ,trail:.

" Theme
colorscheme jellybeans

" Statusline setup
set statusline=%f\  " Filename

" Line Number
set number

" Syntax highlighting options
syntax on
set t_Co=256"

" Always show the status line
set laststatus=2

" Search configs
set incsearch
set hlsearch

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Pay attention when the line has more then 80 characters
set colorcolumn=80

" For Gist plugin send the URL of generated Gist to clipboard in Mac
let g:gist_clip_command = 'pbcopy'

" Indent configs
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smarttab
set smartindent

source ~/.vim/extras.vim

if has("autocmd")
  filetype indent plugin on
endif

" Disable the fucking error bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" To resolve MacVim, Tmux and Clipboard problem
if $TMUX == ''
  set clipboard+=unnamed
endif

runtime bundle/matchit/plugin/matchit.vim
