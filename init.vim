let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

set background=dark " or light if you want light mode
colorscheme gruvbox

source $VIMUSERRUNTIME/chunks/coc.vim

let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

lua << EOF
local colorscheme = "gruvbox"

-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
-- 主题设置
-- require("colorscheme")

-- 插件配置
-- require('lvim.core.breadcrumbs')
-- require('lvim.core.bufferline')
-- require('lvim.core.autolist')
require("plugin-config.nvim-tree")
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
-- require("plugin-config.alpha")
require("plugin-config.autosave")
require("plugin-config.comment")
require("plugin-config.wildfire")
require("plugin-config.impatient")
-- require("plugin-config.toggleterm")
-- require('plugin-config.mini-map')
require('plugin-config.outline')
EOF

"let g:python3_host_prog ='/usr/bin/python3'
let g:python_host_skip_check=1
let g:python3_host_skip_check=1
let g:python3_host_prog ='/opt/homebrew/bin/python3'
