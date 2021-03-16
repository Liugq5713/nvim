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
