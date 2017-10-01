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

if !empty(glob(vimfiles_folder . '/plugged/jellybeans.vim'))
  " Theme
  colorscheme jellybeans
end

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

execute 'source ' . vimfiles_folder . '/abbreviations.vim'
execute 'source ' . vimfiles_folder . '/functions.vim'
execute 'source ' . vimfiles_folder . '/leader.vim'
execute 'source ' . vimfiles_folder . '/keymap.vim'
execute 'source ' . vimfiles_folder . '/gui.vim'

" Sharing system clipboard
set clipboard=unnamed

" Disable the fucking error bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" On save fix whitespaces
autocmd BufWritePre * :FixWhitespace

" Autosave on focus lost and Autoread!
autocmd FocusLost * nested silent! :wa
set autoread

" Allows unsaved hidden buffers
set hidden

let g:snipMate.scope_aliases['javascript'] = 'javascript,marionette,backbone,react,jquery'
let g:snipMate.scope_aliases['html'] = 'html,bootstrap'
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
let g:snipMate.snippet_version = 1

" Syntastic Configs
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='!'
let g:syntastic_mode_map = { 'mode': 'active',
                                   \ 'passive_filetypes': [
                                     \ 'html',
                                     \ 'cucumber',
                                     \ 'sass',
                                     \ 'scss',
                                     \ 'css',
                                     \ 'haml'
                                   \ ] }

" Ignoring in ctrl-p the vendor things
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|public/uploads|tmp/cache)$'

let g:ctrlp_working_path_mode = "w"

" ag
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ctrlp-py-matcher is x22 times faster than default CtrpP matcher written vimscript
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Use ag in Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Preview on ack shouldn't create listed buffers
let g:ack_mappings = { "go": ":.cc <bar> setlocal nobuflisted<CR><C-W>j" }

" Always show the status line
set laststatus=2

"Format the status line
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l/%L)%)\            " current line / total lines

" Eliminating delays on exit the insert mode
set timeoutlen=1000 ttimeoutlen=0

" For Gist plugin send the URL of generated Gist to clipboard
if system('uname')=~'Darwin'
  let g:gist_clip_command = 'pbcopy'
else
  let g:gist_clip_command = 'clip'
endif

" Pay attention when the line has more then 80 characters
set colorcolumn=80

let g:ycm_filetype_blacklist = {
  \ 'gitcommit': 1,
  \ 'text': 1
\ }
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'javascript': 0,
  \ 'ruby': 0,
  \ 'eruby': 0
\ }
let g:ycm_cache_omnifunc = 0
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" Use emacs-style tab completion when selecting files, etc
set wildmode=longest,list

" Allows hide unsaved buffers
set hidden

" Show commands
set showcmd

" Relative Numbers
set relativenumber

autocmd BufNewFile,BufRead *.css.erb set filetype=eruby.css

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'eruby' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx': 1
    \}

let g:user_emmet_settings = {
\  'javascript' : {
\    'quote_char': "'"
\  },
\  'javascript.jsx' : {
\    'quote_char': "'",
\    'extends' : 'jsx'
\  }
\}
