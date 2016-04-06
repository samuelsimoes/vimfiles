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
function! JSXExtractPartial()
  let previous_q_reg = @q
  let l:line = getline('.')
  let l:func_name = input('Function name: ')
  let l:tab = &expandtab ? repeat(' ', &shiftwidth) : '\t'

  " put on reg the possible tag content
  exec "normal! 0f<v/\\/>\<cr>l\"qy"

  let l:self_close_element = (match(getreg('q'), '<\/', 'g') > -1)

  if self_close_element
    exec 'normal! 0f<vat"qc{this.' . func_name . '()}'
  else
    exec "normal! 0f<v/\\/>\<cr>l\"qc{this." . func_name . "()}"
  end

  " Fix identation
  let l:distance = len(matchstr(line, '^[\t|\ ]*'))

  if &expandtab
    let l:distance = (distance / &shiftwidth)
  endif

  if distance > 3
    let l:distance = (distance - 3)
    let @q = substitute(getreg('q'), ('\n' . repeat(tab, distance)), '\n', 'g')
  endif

  exec '/^[\t|\ ]*}$'

  let @q = "\n" . tab . func_name . " () {\n" . repeat(tab, 2) . "return (\n" . repeat(tab, 3) . getreg('q') . "\n" . repeat(tab, 2) . ");\n" . tab . "}"

  exec "normal! o\<esc>\"qp"

  let @q = previous_q_reg
endfunction

nnoremap <Leader>je :call JSXExtractPartial()<CR>

function! JSXEachAttributeInLine()
  let l:previous_q_reg = @q
  let l:line = getline(".")
  let l:identation_length = len(matchstr(line, '^[\t|\ ]*'))

  if &expandtab
    let l:padding = repeat(' ', (identation_length + &shiftwidth))
  else
    let l:padding = repeat('\t', identation_length + 1)
  endif

  let @q = substitute(line, '\w*=', '\n' . padding . '&', 'g')

  execute 'normal 0d$"qp'

  let @q = previous_q_reg
endfunction

nnoremap <Leader>ji :call JSXEachAttributeInLine()<CR>
