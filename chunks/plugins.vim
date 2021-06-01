" ===
" Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ===== Tools =====
" Status Line
Plug 'itchyny/lightline.vim'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" 快速选中文本，或者用来替换
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'

" 快速注释
Plug 'preservim/nerdcommenter'


" Colorschemes
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'



call plug#end()

colorscheme onedark
