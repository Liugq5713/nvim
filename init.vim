" 
" Vim Config
" by Thomas Lackemann

set fileformat=unix

syntax on
filetype plugin indent on    " required
filetype plugin on

runtime! init/**.vim


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Keybindings
" -----------

let mapleader = ","
" let maplocalleader = ";"

" Save & quit
noremap <LEADER>w :w<CR>
noremap <LEADER>q :q<CR>

" Redo
noremap U :redo<CR>

" noremap space i<space><esc>
" U/E keys for 5 times u/e (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j
noremap B ^
noremap E $

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

" Stop Elixir from hijacking tab navigation
" let g:alchemist_tag_stack_map = '<C-m>'

" Stop Go from hijacking tab navigation
" let g:go_def_mapping_enabled = 0

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i


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
noremap sc <C-w>c


" Page scroll
noremap <C-n> <C-d>
noremap <C-m> <C-u>

" Copy/paste with gVim
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" `gf` open files in a vertical pane
nnoremap gf :vertical wincmd f<CR>

" Insert a timestamp
nmap <F3> i<C-R>=strftime("%FT%T%z")<CR><Esc>
imap <F3> <C-R>=strftime("%FT%T%z")<CR>

" Use FZF like a big ol' project search (ctrl+f)
nmap <C-f>  :Rg<CR>


" Edit init.vim
noremap <LEADER>ec :e ~/.config/nvim/init.vim<CR>
" Reload conf
noremap <LEADER>re :source ~/.config/nvim/init.vim<CR>


" Example configuration
nmap <Leader>bj <Plug>(coc-bookmark-next)
nmap <Leader>bk <Plug>(coc-bookmark-prev)
nmap <Leader>b <Plug>(coc-bookmark-annotate)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : ""
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : ""
inoremap <expr> <c-space> coc#refresh()
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn  <Plug>(coc-rename)
xmap <leader>f   <Plug>(coc-format-selected)
nmap <leader>f :call CocAction('format')<CR>
nmap ? :CocFix<CR>
xmap <leader><leader> :CocAction<CR>
nmap <leader><leader> :CocAction<CR>
nmap <leader>o :call CocAction('runCommand', 'editor.action.organizeImport')<CR>
nmap <leader>e :CocCommand explorer<CR>
" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

call plug#begin()
 
set runtimepath^=~/.vim
let &packpath = &runtimepath

" # Plugins
" Make sure you use single quotes
"
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" True color
Plug 'jacoborus/tender.vim'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
" ElixirNetrw
Plug 'elixir-editors/vim-elixir'
" File Control / Formatting
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Haxe
Plug 'jdonaldson/vaxe'
" HTML
Plug 'othree/html5.vim'
" JavaScript
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'Quramy/vim-js-pretty-template'
Plug 'bpietravalle/vim-bolt'
" Markdown
Plug 'gabrielelana/vim-markdown'
Plug 'jszakmeister/markdown2ctags'
" Rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
" Shaders/GLSL
Plug 'tikhomirov/vim-glsl'
" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Tabs
" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs.vim'
Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}

" Initialize plugin system
call plug#end()

pescriptAssign guifg=#ab47bc
hi typescriptAsyncFuncKeyword guifg=#c0ca33 gui=italic
hi typescriptBinaryOp guifg=#26a69a
hi typescriptDotNotation guifg=#81c784
hi typescriptFuncCallArgComma guifg=#ab47bc
hi typescriptFuncKeyword guifg=#c0ca33 gui=italic
hi typescriptUnaryOp guifg=#26a69a
hi typescriptObjectSpread guifg=#81c784
hi typescriptOperator guifg=#ff9800
hi typescriptRepeat guifg=#c9d05c gui=italic
hi typescriptRestOrSpread guifg=#81c784
hi typescriptStatementKeyword guifg=#009688 gui=italic
hi typescriptTemplateSB guifg=#ab47bc
hi typescriptTypeAnnotation guifg=#b2dfdb
hi typescriptTypeBrackets guifg=#ab47bc
" Coc
hi CocErrorHighlight guifg=#f44336 gui=underline
hi CocHighlightText guibg=#78909c
hi GitGutterAdd guifg=#81c784
hi GitGutterChange guifg=#fff176
hi GitGutterDelete guifg=#e57373
hi CocCodeLens guifg=#455a64
" Syntax
hi typescriptLogicSymbols guifg=#26a69a
hi typescriptFuncKeyword guifg=#ce93d8
" Css
hi cssNoise guifg=#9fa8da
hi cssImportant guifg=#E06C75
hi cssAttrComma guifg=#81c784
" HTML
hi htmlTagName guifg=#f48fb1
hi htmlArg guifg=#ffc107
hi htmlSpecialTagName guifg=#f48fb1
" Rust
hi CocRustChainingHint guifg=#00695c gui=italic

nmap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" Colors
" -----------

" Set neovim colors
if has('nvim') || has('termguicolors')
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set background=dark
syntax enable


" Highlight the maxlength
set colorcolumn=100

let g:airline_theme = 'oceanicnext'
