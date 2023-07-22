let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

let g:smartim_default = 'com.apple.keylayout.ABC'

source $VIMUSERRUNTIME/chunks/coc.vim
lua << EOF

-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")

-- 快捷键映射
require("keybindings")

require('lvim.own.list').setup()

EOF

"let g:python3_host_prog ='/usr/bin/python3'
let g:python_host_skip_check=1
let g:python3_host_skip_check=1
" let g:python3_host_prog ='/opt/homebrew/bin/python3'



