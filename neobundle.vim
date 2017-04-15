" Theme
NeoBundle 'nanotech/jellybeans.vim'

" Git on Vim
NeoBundle 'tpope/vim-fugitive'

" Piping from Vim buffer
NeoBundle 'krisajenkins/vim-pipe'

" Rails and Buby
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'rhysd/vim-textobj-ruby'
NeoBundle 'tpope/vim-endwise'

" Elixir
NeoBundle 'elixir-lang/vim-elixir'

" File searching
NeoBundle 'mileszs/ack.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'FelikZ/ctrlp-py-matcher' " speeds the ctrl-p on typing searching

" Movement
NeoBundle 'Lokaltog/vim-easymotion' " is like give to you the spiderman's powers
NeoBundle 'nelstrom/vim-visual-star-search'

" Syntax
NeoBundle 'briancollins/vim-jst'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'Valloric/MatchTagAlways'

" Syntax Checking
NeoBundle 'scrooloose/syntastic'

" Code editing
NeoBundle 'Raimondi/delimitMate' " autocomplete pairs
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'tpope/vim-sleuth' " smart auto shiftwidth and expandtab
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'vim-scripts/JavaScript-Indent'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-abolish' " change word case
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Valloric/YouCompleteMe', { 'build' : { 'mac' : './install.sh' } }
NeoBundle 'samuelsimoes/vim-jsx-utils'

" Snippets
NeoBundle 'garbas/vim-snipmate', { 'depends': ['MarcWeber/vim-addon-mw-utils', 'tomtom/tlib_vim'] }

" Make gists from Vim
NeoBundle 'mattn/gist-vim', { 'depends': 'mattn/webapi-vim' }

" Search on Google from Vim
NeoBundle 'szw/vim-g'

" Better buffer usage
NeoBundle 'vim-scripts/BufOnly.vim' " close all buffers except the current open buffer
NeoBundle 'rbgrouleff/bclose.vim' " avoid to close the window when you try to close the buffer

NeoBundle 'samuelsimoes/vim-drawer'
