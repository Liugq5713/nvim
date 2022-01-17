" ===
" Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ===== Tools =====
" Status Line
"Plug 'itchyny/lightline.vim'

" 快速选中文本，或者用来替换
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'gcmt/wildfire.vim'

Plug 'voldikss/vim-floaterm'

" 使用浏览器打开链接
Plug 'tyru/open-browser.vim'
" 快速注释
Plug 'preservim/nerdcommenter'

Plug 'editorconfig/editorconfig-vim'

" 全局搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Icons for different file types
Plug 'ryanoasis/vim-devicons'

"" 剪贴板
"Plug 'junegunn/vim-peekaboo'

"" mark 标记
"Plug 'kshenoy/vim-signature'

" Markdown
Plug 'jszakmeister/markdown2ctags'
Plug 'majutsushi/tagbar'

" git
Plug 'tpope/vim-fugitive'

Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}

" tag 希望生成代码文件，但是目前还不知道怎么做
" Plug 'vim-scripts/taglist.vim'
" Colorschemes
"Plug 'wojciechkepka/vim-github-dark'
"Plug 'joshdick/onedark.vim'

"Plug 'morhetz/gruvbox'

Plug 'rebelot/kanagawa.nvim'
Plug 'luochen1990/rainbow'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'

Plug 'Pocco81/AutoSave.nvim'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

colorscheme kanagawa
"colorscheme gruvbox

set background=dark

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle


"Plug 'nvim-lualine/lualine.nvim' config
lua << END
require('lualine').setup({
   theme = 'gruvbox'
})
END


"Plug 'Pocco81/AutoSave.nvim' config
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = function ()
            return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
        end,
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)

autosave.hook_after_saving = function ()
	print("saved at " .. vim.fn.strftime("%H:%M:%S"))
end

EOF
