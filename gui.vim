" No scroll
set guioptions-=L

set guifont=Monaco:h18

set linespace=5

" Disable all blinking
set guicursor+=a:blinkon0

if has("gui_macvim")
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tablast<CR>
endif
