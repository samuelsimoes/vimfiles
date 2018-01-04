" Theme
Plug 'nanotech/jellybeans.vim'

" Git on Vim
Plug 'tpope/vim-rhubarb' | Plug 'tpope/vim-fugitive'

" Piping from Vim buffer
Plug 'krisajenkins/vim-pipe'

" Rails and Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'rhysd/vim-textobj-ruby'
Plug 'tpope/vim-endwise'

" File searching
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher' " speeds the ctrl-p on typing searching

" Movement
Plug 'Lokaltog/vim-easymotion' " is like give to you the spiderman's powers
Plug 'nelstrom/vim-visual-star-search'

" Syntax
Plug 'isRuslan/vim-es6'
Plug 'mustache/vim-mustache-handlebars', { 'for': 'handlebars' }
Plug 'Valloric/MatchTagAlways'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }

" Syntax Checking
Plug 'scrooloose/syntastic'

" Code editing
Plug 'Raimondi/delimitMate' " autocomplete pairs
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-sleuth' " smart auto shiftwidth and expandtab
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish' " change word case
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim' | Plug 'roxma/nvim-yarp' | Plug 'roxma/vim-hug-neovim-rpc'
Plug 'samuelsimoes/vim-jsx-utils'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate', { 'commit': '0c20e41' }

" Make gists from Vim
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

" Search on Google from Vim
Plug 'szw/vim-g'

" Better buffer usage
Plug 'vim-scripts/BufOnly.vim' " close all buffers except the current open buffer
