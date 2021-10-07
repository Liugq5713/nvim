" ----------------------------------- "
" 基本设置
" ----------------------------------- "

set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
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
set history=500
set scrolloff=1

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nobackup

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime
