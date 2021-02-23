" ===
" === coc
" ===

" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if

" Extension list
let g:coc_global_extensions = [
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-lists',
  \ 'coc-gitignore',
  \ 'coc-vimlsp',
  \ 'coc-lists',
  \ 'coc-git',
  \ 'coc-explorer',
  \ 'coc-sourcekit',
  \ 'coc-highlight',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-webpack',
  \ 'coc-spell-checker',
  \ 'coc-rust-analyzer',
  \ 'coc-vetur',
  \ 'coc-texlab',
  \ 'coc-flutter',
  \ 'coc-cssmodules',
  \ 'coc-pairs',
  \ 'https://github.com/VanceLongwill/import-sorter',
  \ 'coc-styled-components',
  \ ]

" Intellisense
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : ""
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : ""
inoremap <expr> <c-space> coc#refresh()

" Show document
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" coc-snippets
let g:coc_snippet_next = '<tab>'

"""
""" Keymaps
"""

" Tools
nmap          <leader>e                :CocCommand explorer<CR>
" Goto s
nmap <silent> g[                <Plug>(coc-diagnostic-prev)
nmap <silent> g]                <Plug>(coc-diagnostic-next)
nmap <silent> gd                <Plug>(coc-definition)
nmap <silent> gy                <Plug>(coc-type-definition)
nmap <silent> gi                <Plug>(coc-implementation)
nmap <silent> gr                <Plug>(coc-references)
" Quick edit
nmap          <leader>rn        <Plug>(coc-rename)
xmap          <leader>f         <Plug>(coc-format-selected)
nmap          <leader>f         :call CocAction('format')<CR>
" CodeAction
nmap          ?                 :CocFix<CR>
nmap          <leader><leader>  :CocAction<CR>
xmap          <leader><leader>  <Plug>(coc-codeaction-selected)
nmap          <leader>a         <Plug>(coc-codeaction-selected)
" Quick exec
nmap          <leader>o         :call CocAction('runCommand', 'editor.action.organizeImport')<CR>
nmap          <leader>gi        :CocCommand git.chunkInfo<CR>
nmap          <leader>le        :CocList extensions<CR>
nmap          <leader>l<leader> :CocList<CR>

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
autocmd FileType typescript,typescriptreact
  \ nnoremap <buffer> <leader>o :CocCommand extension.sortImports<CR>
