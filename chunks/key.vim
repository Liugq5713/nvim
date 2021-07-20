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

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" Auto-indent whole file
nmap <leader>= gg=G``

" Edit init.vim
noremap <LEADER>ec :e ~/.config/nvim/init.vim<CR>

" let maplocalleader = ";"
" Redo
noremap U :redo<CR>

nmap <leader>p :let @+ = expand("%")<CR>
" Use FZF like a big ol' project search (ctrl+f)
noremap <silent> <C-g> :GFiles?<CR>
noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-l> :Lines<CR>
"noremap <silent> <C-b> :Buffers<CR>
noremap <silent> <C-e> :Rg<CR>
noremap <silent> <C-h> :History<CR>

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" noremap space i<space><esc>
" U/E keys for 5 times u/e (faster navigation)
noremap <C-j> 8j
noremap <C-k> 8k
noremap <C-h> ^
noremap <C-l> $

" Split screen
noremap s <nop>
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>
noremap <C-w>m <C-W>_<C-W><Bar>
noremap <C-w>M <C-W>=

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : ""
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : ""
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

"indent/unindent visual mode selection with tab/shift+tab
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

