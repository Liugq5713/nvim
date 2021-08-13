" ===
" === Wildfire
" ===
nmap <CR> <Plug>(wildfire-fuel)
xmap <CR> <Plug>(wildfire-fuel)

let g:wildfire_objects = {
  \ "*" : [
  \   "iw",
  \   "i'", "a'",
  \   'i"', 'a"',
  \   "i)", "a)",
  \   "i]", "a]",
  \   "i}", "a}",
  \   "ip",
  \   "it",
  \ ],
  \ "html,xml" : ["at", "it"],
\ }

"=========================================
"  vim-tmux-navigator 插件配置
"=========================================
"自定义导航键，默认是 <C-h> <C-j> 等，想用 <C-w> h,j,k,l
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
"跳转到上一个分割窗口
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>
"当从 vim 跳到 tmux 时，自动保存所有 buffer，1：保存当前buffer，2：所有buffer
let g:tmux_navigator_save_on_switch = 2
