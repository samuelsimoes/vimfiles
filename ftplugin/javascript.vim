call textobj#user#plugin('javascriptfunctions', {
\   '-': {
\     'select-a-function': 'JavascriptFunctionSelectA',
\     'select-i-function': 'JavascriptFunctionSelectI',
\     'select-i': '<buffer>im',
\     'select-a': '<buffer>am'
\   }
\ })

function! JavascriptFunctionSelectI()
  normal! $j0
  let head_pos = getpos('.')
  normal! k$%k$
  let tail_pos = getpos('.')
  return ['V', head_pos, tail_pos]
endfunction

function! JavascriptFunctionSelectA()
  normal! 0
  let tail_pos = getpos('.')
  normal! $%
  let head_pos = getpos('.')
  return ['V', head_pos, tail_pos]
endfunction

let b:emmet_html5 = 0
