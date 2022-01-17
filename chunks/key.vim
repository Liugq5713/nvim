" ----------------------------------- "
" Keybindings
" ----------------------------------- "
let mapleader = " " 

" setup mapping to call :LazyGit
nnoremap <silent> <leader>lg :LazyGit<CR>

noremap <LEADER>t :set splitbelow<CR>:split term://zsh<CR>i
tnoremap <Esc> <C-\><C-n>

" To simulate i_CTRL-R in terminal-mode
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

vmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)

" Auto-indent whole file
nmap <leader>= gg=G``

" let maplocalleader = ";"

nmap <leader>p :let @+ = expand("%")<CR>
" Use FZF like a big ol' project search (ctrl+f)
noremap <silent> <C-g> :GFiles?<CR>
noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-b> :Buffers<CR>
noremap <silent> <C-e> :Rg<CR>
noremap <silent> <C-h> :History<CR>

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Split screen
noremap <C-w>m <C-W>_<C-W><Bar>
noremap <C-w>M <C-W>=

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : ""
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : ""
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

"indent/unindent visual mode selection with tab/shift+tab
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
