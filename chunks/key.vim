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

" Save & quit
noremap <LEADER>w :w<CR>
noremap <LEADER>q :q<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" Auto-indent whole file
nmap <leader>= gg=G``

nmap <leader>o o<Esc> 

" Edit init.vim
noremap <LEADER>ec :e ~/.config/nvim/init.vim<CR>

" let maplocalleader = ";"
" Redo
noremap U :redo<CR>

" Use FZF like a big ol' project search (ctrl+f)
nmap <C-p> :GFiles<CR>
noremap <silent> <C-l> :Lines<CR>
noremap <silent> <C-w> :Buffers<CR>
noremap <silent> <C-e> :Rg<CR>
noremap <silent> <C-h> :History<CR>

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" noremap space i<space><esc>
" U/E keys for 5 times u/e (faster navigation)
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-h> ^
noremap <C-l> $


inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : ""
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : ""
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv
map <D-/>       <plug>NERDCommenterToggle
imap <D-/> <Esc><plug>NERDCommenterToggle i
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

