" ===
" === Wildfire
" ===
nmap <C-w> <Plug>(wildfire-fuel)
xmap <C-w> <Plug>(wildfire-fuel)

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
