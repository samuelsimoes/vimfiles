function! SetVimPipeDatabase()
  let l:input_message = 'Change VimPipe database'

  if exists('b:vimpipe_database_name')
    let l:input_message = input_message . ' (actual: ' . b:vimpipe_database_name . ')'
  endif

  let l:intended_vimpipe_database_name = input(input_message . ': ')

  if len(l:intended_vimpipe_database_name) > 0
    let b:vimpipe_database_name = l:intended_vimpipe_database_name
    let b:vimpipe_command = 'psql -d ' . b:vimpipe_database_name
  end
endfunction

map <LocalLeader>m :call SetVimPipeDatabase()<CR>
