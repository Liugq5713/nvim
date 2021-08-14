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

" 使用浏览器打开链接
Plug 'tyru/open-browser.vim'
" 快速注释
Plug 'preservim/nerdcommenter'

" 全局搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Icons for different file types
Plug 'ryanoasis/vim-devicons'

" git
Plug 'tpope/vim-fugitive'

" tag 希望生成代码文件，但是目前还不知道怎么做
" Plug 'vim-scripts/taglist.vim'
" Colorschemes
"Plug 'wojciechkepka/vim-github-dark'
"Plug 'joshdick/onedark.vim'

Plug 'morhetz/gruvbox'


call plug#end()

colorscheme gruvbox
set background=dark
