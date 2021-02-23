" ===
" Key bindings
" ===
" Basic
let mapleader=" "
noremap ; :

" Save & quit
noremap <LEADER>w :w<CR>
noremap <LEADER>W :wa<CR>
noremap <LEADER>q :q<CR>
noremap <LEADER>Q :q!<CR>

" Edit init.vim
noremap <LEADER>ec :e ~/.config/nvim/init.vim<CR>

" Indentation
nnoremap , <<
nnoremap . >>
vnoremap , <
vnoremap . >

" Redo
noremap U :redo<CR>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Reload conf
noremap <LEADER>re :source ~/.config/nvim/init.vim<CR>

" Movement
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-h> ^
noremap <C-l> $
noremap W 5w
noremap B 5b

" Move screen without move cursor
nnoremap <C-d> 5<C-y>
nnoremap <C-f> 5<C-e>

" Page scroll
noremap <C-n> <C-d>
noremap <C-m> <C-u>

" Split screen
noremap s <nop>
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>
noremap sk <C-w>k
noremap sj <C-w>j
noremap sh <C-w>h
noremap sl <C-w>l
noremap sK <C-w>K
noremap sJ <C-w>J
noremap sH <C-w>H
noremap sL <C-w>L

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" History position
noremap <C-e> <C-o>
noremap <C-r> <C-i>

" Change case
noremap ` ~

" Move to end in insert mode
inoremap <C-o> <end>
inoremap <C-u> <home>

" Command mode cursor
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>

" Terminal
tnoremap <ESC> <C-\><C-n>
tnoremap <C-f> <C-\><C-n>

" Duplicate visual block
vnoremap D yP
nnoremap D yyP

" Exit insert & select & visual mode
inoremap <C-f> <esc>
vnoremap <C-f> <esc>

" Tabs
nnoremap <leader>t :tabedit<CR>
nnoremap <C-u> gT
nnoremap <C-o> gt
