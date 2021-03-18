" ===
" Plugins
" ===
call plug#begin('~/.config/nvim/plugged')
" ===== Tools =====
" Status Line
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" 快速选中文本，或者用来替换
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'

" 快速注释
Plug 'preservim/nerdcommenter'
" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Tototree
Plug 'mbbill/undotree'
" True color
Plug 'jacoborus/tender.vim'
" Colorschemes
Plug 'morhetz/gruvbox'

" Select word
Plug 'gcmt/wildfire.vim'
" ===== Syntax =====
" Kotlin
Plug 'udalov/kotlin-vim'
" TOML
Plug 'cespare/vim-toml'
" Thrift
Plug 'solarnz/thrift.vim'
" Vue
Plug 'posva/vim-vue'
" Dart
Plug 'dart-lang/dart-vim-plugin'
" Nearley
Plug 'tjvr/vim-nearley'
" EBNF
Plug 'vim-scripts/ebnf.vim'
" css/less
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
" Rust
Plug 'rust-lang/rust.vim'
" ===== Misc =====
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()

colorscheme gruvbox
