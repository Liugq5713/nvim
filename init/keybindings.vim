" Keybindings
" -----------

let mapleader = ","
" let maplocalleader = ";"

" Move between screens
nmap <C-h>      <C-w>h<CR>
nmap <C-j>      <C-w>j<CR>
nmap <C-k>      <C-w>k<CR>
nmap <C-l> <C-w>l<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" Git blame
map <leader>g :Gblame<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle
map <D-/>       <plug>NERDCommenterToggle
imap <D-/> <Esc><plug>NERDCommenterToggle i

" Auto-indent whole file
nmap <leader>= gg=G``

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Easy access to the shell
map <Leader><Leader> :!

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i

" Stop Elixir from high-jacking tab navigation
let g:alchemist_tag_stack_map = '<C-m>'
