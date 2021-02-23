" ===
" Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

" ===== Tools =====
" Status Line
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'
" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Tototree
Plug 'mbbill/undotree'
" True color
Plug 'jacoborus/tender.vim'
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
