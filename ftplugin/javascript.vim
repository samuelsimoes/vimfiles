call textobj#user#plugin('javascriptfunctions', {
\   '-': {
\     'select-a-function': 'JavascriptFunctionSelectA',
\     'select-i-function': 'JavascriptFunctionSelectI',
\     'select-i': 'im',
\     'select-a': 'am',
\   },
\ })

function! JavascriptFunctionSelectI()
  normal! j
  execute "?function"
  normal! 0f{%k$
  let tail_pos = getpos('.')
  normal! j0f}%j0
  let head_pos = getpos('.')
  return ['V', head_pos, tail_pos]
endfunction

function! JavascriptFunctionSelectA()
  normal! j
  execute "?function"
  normal! 0
  let tail_pos = getpos('.')
  normal! f{%l
  let head_pos = getpos('.')
  return ['V', head_pos, tail_pos]
endfunction
