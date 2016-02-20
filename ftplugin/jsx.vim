let emmet_html5 = 0

" transform this:
"   <p>Hello</p>
" into this:
"   return (
"     <p>Hello</p>
"   );
nnoremap <Leader>ja :normal 0f<i(<ESC>lxvat<ESC>a)<ESC>i<CR><ESC>l%a<CR><ESC>wvat><ESC>k0f(ireturn <ESC>l%a;

" extract some JSX component's node to a dedicated render function (only ES6
" class)
function! ExtractPartial()
  let func_name = input('Function name: ')
  if func_name != ''
    exec 'normal! 0f<vatc{this.' . func_name . '()}'
    exec '?^\ \ \w*\ (.*) {'
    exec "normal! O". func_name . " () {}\<cr>\<esc>kf{a\<cr>\<esc>O\<tab>return ();\<esc>hha\<cr>\<esc>O\<tab>\<esc>p"
  endif
endfunction

nnoremap <Leader>je :call ExtractPartial()<CR>
