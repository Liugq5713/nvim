if exists('g:loaded_chunk_filetype')
  finish
endif
let g:loaded_chunk_filetype = 1

" ===
" === Filetype
" ===
autocmd BufNewFile,BufRead *.ttml set filetype=xml
autocmd BufNewFile,BufRead *.ttss set filetype=css
autocmd BufNewFile,BufRead *.nrpc set filetype=nrpc
autocmd BufNewFile,BufRead *.tex set filetype=tex
autocmd BufNewFile,BufRead *.arb set filetype=json
