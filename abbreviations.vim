cab sft setfiletype
cab hash s/:\([^ ]*\)\(\s*\)=>/\1:/g
" Shortcut to access the current buffered file folder
cab <expr> @ expand('%:p:h')
