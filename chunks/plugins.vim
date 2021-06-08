" ===
" Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ===== Tools =====
" Status Line
Plug 'itchyny/lightline.vim'

" 快速选中文本，或者用来替换
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'

" 快速注释
Plug 'preservim/nerdcommenter'

" 全局搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'

" Colorschemes
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'



call plug#end()

colorscheme onedark
