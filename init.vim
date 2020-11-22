
" ----------------------------------- "
" 基本设置
" ----------------------------------- "

set fileformat=unix
set smartindent
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:»\ ,trail:▞
set number
syntax on
set hlsearch
set cursorline
set cursorcolumn
set hidden
set nowrapscan
set mouse=a
set shortmess+=c
set signcolumn=yes
set updatetime=1000
set clipboard+=unnamedplus
set so=10
set cmdheight=2
set history=200

set nobackup

filetype plugin indent on    " required
filetype plugin on

set wildignore+=*/node_modules/*
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}] 
au BufRead,BufNewFile *.md set filetype=vimwiki
" ===
"
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd BufWritePre,BufRead *.md :TagbarOpen<cr>


" Keybindings
" -----------

let mapleader = " " 

noremap <LEADER>t :set splitbelow<CR>:split term://zsh<CR>i

" Save & quit
noremap <LEADER>w :w<CR>
noremap <LEADER>q :q<CR>


" Git blame
map <leader>g :Gblame<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" Auto-indent whole file
nmap <leader>= gg=G``


" Edit init.vim
noremap <LEADER>ec :e ~/.config/nvim/init.vim<CR>

" let maplocalleader = ";"

tnoremap <Esc> <C-\><C-n>:q<CR>

" To simulate i_CTRL-R in terminal-mode
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" Redo
noremap U :redo<CR>

nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
" noremap space i<space><esc>
" U/E keys for 5 times u/e (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j
noremap H ^
noremap L $

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

" Stop Elixir from hijacking tab navigation
" let g:alchemist_tag_stack_map = '<C-m>'

" Stop Go from hijacking tab navigation
"let g:go_def_mapping_enabled = 0

" Split screen
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>
noremap sk <C-w>k
noremap sj <C-w>j
noremap sh <C-w>h
noremap sl <C-w>l
noremap sc <C-w>c
" Resize splits with arrow keys
noremap s<up> :res +5<CR>
noremap s<down> :res -5<CR>
noremap s<left> :vertical resize-5<CR>
noremap s<right> :vertical resize+5<CR>

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
noremap <silent> <C-p> :Leaderf file<CR>
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <LEADER>h :History<CR>
" ===
" === coc
" ===
" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-lists', 'coc-git',  'coc-sourcekit', 'coc-highlight', 'coc-snippets', 'coc-prettier', 'coc-eslint', 'coc-webpack', 'coc-spell-checker', 'coc-rust-analyzer', 'coc-vetur', 'coc-texlab', 'coc-flutter', 'coc-cssmodules', 'coc-pairs']
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
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn  <Plug>(coc-rename)
xmap <leader>f   <Plug>(coc-format-selected)
nmap <leader>f :call CocAction('format')<CR>
nmap ? :CocFix<CR>
xmap <leader><leader> :CocAction<CR>
nmap <leader><leader> :CocAction<CR>
nmap <leader>o :call CocAction('runCommand', 'editor.action.organizeImport')<CR>
" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>


call plug#begin()
 
" # Plugins
" Make sure you use single quotes
"
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
" True color
"Plug 'jacoborus/tender.vim'
Plug 'tomasr/molokai'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mhartington/oceanic-next'
" wiki
Plug 'vimwiki/vimwiki'
" ElixirNetrw
Plug 'elixir-editors/vim-elixir'
" File Control / Formatting
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
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
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" Initialize plugin system
call plug#end()

" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.config/nvim/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sro=»',
    \ 'kinds' : [
	    \ 'h:headings',
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" Plugins {
    " NerdTree {
        if isdirectory(expand("~/.config/nvim/plugged/nerdtree"))
            map <leader>e :NERDTreeFind<CR>
            nmap <leader>nt :NERDTreeFind<CR>

            let NERDTreeShowBookmarks=1
            let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
            let NERDTreeChDirMode=0
            let NERDTreeQuitOnOpen=0
            let NERDTreeMouseMode=2
            let NERDTreeShowHidden=1
            let NERDTreeKeepTreeInNewTab=1
            let g:nerdtree_tabs_open_on_gui_startup=0
        endif
    " }
" }
	"
" ===
" === True color
" ===
if (has("termguicolors"))
 set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme onedark
let g:airline_theme='onedark'
"colorscheme molokai
"let g:rehash256 = 1
"let g:molokai_original = 1

" UI
hi CursorColumn guibg=#263238
hi CursorLine guibg=#263238
hi Folded guifg=#ffc107 guibg=none
hi Normal guibg=#000000
hi SignColumn guibg=#000000
hi Visual guibg=#607d8b
" Default syntax
hi Comment guifg=#666666 gui=italic
hi Conditional guifg=#c9d05c gui=italic
hi Repeat guifg=#c9d05c gui=italic
hi Exception guifg=#9fa8da
hi Keyword guifg=#c0ca33
hi Operator guifg=#ab47bc
hi Special guifg=#ce93d8
hi String guifg=#aed581
hi Title guifg=#d1c4e9
" Typescript
hi typescriptAssign guifg=#ab47bc
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
