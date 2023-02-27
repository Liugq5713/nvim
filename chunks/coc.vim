" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if

" Extension list
let g:coc_global_extensions = [
  \ 'coc-html',
  \ '@yaegassy/coc-volar',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-lists',
  \ 'coc-vimlsp',
  \ 'coc-lists',
  \ 'coc-sourcekit',
  \ 'coc-highlight',
  \ 'coc-snippets',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-webpack',
  \ 'coc-spell-checker',
  \ 'coc-texlab',
  \ 'coc-pairs',
  \ ]


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <C-j>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" coc-snippets
let g:coc_snippet_next = '<tab>'

"""
""" Keymaps
"""


" CodeAction
nmap          ?                 :CocFix<CR>
nmap          <leader>a         <Plug>(coc-codeaction-selected)
" Quick exec
nmap          <leader>gi        :CocCommand git.chunkInfo<CR>
nmap          <leader>le        :CocList extensions<CR>
nmap          <leader>l<leader> :CocList<CR>

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"""
""" Autocmd part
"""

""" Prevent autocmd multi times
if exists('g:loaded_chunk_coc')
  finish
endif
let g:loaded_chunk_coc = 1

" Show signature help on placeholder jump
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" coc-highlight
autocmd CursorMoved * silent call CocActionAsync('highlight')

""" Settings for different files
" Rust
autocmd FileType rust       nnoremap <buffer> tn :RustTest<CR>
autocmd FileType rust       nnoremap <buffer> to :RustTest -- --nocapture<CR>
" Monorepo & tsx
autocmd BufRead,BufNewFile */monorepo/** setlocal expandtab
autocmd BufRead,BufNewFile */monorepo/** setlocal tabstop=2
autocmd BufRead,BufNewFile */monorepo/** setlocal shiftwidth=2
"autocmd FileType typescript,typescriptreact
  "\ nnoremap <buffer> <leader>o :CocCommand extension.sortImports<CR>
