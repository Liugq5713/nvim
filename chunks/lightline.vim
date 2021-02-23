" ===
" === Lightline
" ===
let g:lightline = {
  \   'colorscheme': 'Tomorrow_Night_Bright',
  \   'active': {
  \     'left': [
  \       [
  \         'coc_errors', 'coc_warnings', 'coc_info', 'coc_hints', 'coc_ok',
  \         'readonly', 'relativepath',
  \       ],
  \       [ 'coc_status' ]
  \     ]
  \   },
  \   'component_function': {
  \     'relativepath': 'LightlineFilename',
  \   },
  \ }

function! LightlineFilename()
  let filename = expand('%') !=# '' ? expand('%:.') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

let g:lightline#coc#indicator_errors = '﮻ '
let g:lightline#coc#indicator_info = ' '
let g:lightline#coc#indicator_warnings = ' '
let g:lightline#coc#indicator_hints = ' '

call lightline#coc#register()
