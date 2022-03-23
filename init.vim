let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

source $VIMUSERRUNTIME/chunks/settings.vim
source $VIMUSERRUNTIME/chunks/coc.vim


"source $VIMUSERRUNTIME/chunks/filetype.vim
"source $VIMUSERRUNTIME/chunks/key.vim
"source $VIMUSERRUNTIME/chunks/plugins.vim
"source $VIMUSERRUNTIME/chunks/plugins_setting.vim
"source $VIMUSERRUNTIME/chunks/undotree.vim

lua << EOF
-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
require("plugin-config.surround")
require("plugin-config.autosave")
require("plugin-config.autopairs")
require("plugin-config.comment")
require("plugin-config.wildfire")
require("plugin-config.alpha")
require("plugin-config.impatient")
require("plugin-config.indentline")
EOF


"let g:python3_host_prog ='/usr/bin/python3'
let g:python3_host_prog ='/opt/homebrew/bin/python3'


"let g:python_host_prog = '/usr/bin/python2'
"let g:python3_host_prog = '/usr/bin/python3'

if executable("rg")
    command! -bang -nargs=* Rg
          \ call fzf#vim#grep(
          \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
          \   <bang>0 ? fzf#vim#with_preview('up:60%')
          \           : fzf#vim#with_preview('right:50%:hidden', '?'),
          \   <bang>0)

    nnoremap <C-p>a :Rg
endif

