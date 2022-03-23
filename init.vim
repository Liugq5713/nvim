let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

source $VIMUSERRUNTIME/chunks/coc.vim

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
require("plugin-config.comment")
require("plugin-config.wildfire")
require("plugin-config.alpha")
require("plugin-config.impatient")
require("plugin-config.indentline")
EOF

"let g:python3_host_prog ='/usr/bin/python3'
let g:python3_host_prog ='/opt/homebrew/bin/python3'
