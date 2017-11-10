" vim-pipe and jump back to where i was
function! PipeSameLine()
    let line = line('.')
    let column = col('.')

    %call VimPipe()

    call cursor(line, column)
endfunc

" Rename current file
function! Rename()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

function! VimSnippetsFilename(...)
  let template = get(a:000, 0, "$1")
  let arg2 = get(a:000, 1, "")

  let basename = expand('%:t:r')

  if basename == ''
    return arg2
  else
    return substitute(template, '$1', basename, 'g')
  endif
endfunction

function! TagContentOwnLine()
  let l:previous_q_reg = @q
  let l:tab = &expandtab ? repeat(" ", &shiftwidth) : "\t"
  let l:line = getline(".")
  let l:line_number = line(".")
  let l:distance = len(matchstr(line, "^\[\\t|\\ \]*"))
  if &expandtab
    let l:distance = (distance / &shiftwidth)
  endif

  exec "normal! 0\"qdit"

  let @q = "\n" . repeat(tab, distance + 1) . getreg("q") .  "\n" . repeat(tab, distance)

  exec "normal! h\"qp"

  let @q = previous_q_reg
endfunction

function! GetVisualSelection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let l:lines = getline(lnum1, lnum2)
  let l:lines[-1] = lines[-1][: col2 - (&selection == "inclusive" ? 1 : 2)]
  let l:lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

function! ChangeSelected()
  let l:cursor = getpos(".")
  let l:change = input("Change to: ")
  if !len(change)
    return
  endif
  let l:bar = GetVisualSelection()
  exec ":%s/" . bar . "/" . change . "/g"
  call setpos(".", cursor)
endfunction
