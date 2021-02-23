" ===
" === True color
" ===
if !exists('g:loaded_chunk_color')
  if (has("termguicolors"))
    set termguicolors
  endif
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  colorscheme tender
endif
let g:loaded_chunk_color = 1

" UI
hi CursorColumn guibg=#263238
hi CursorLine guibg=#263238
hi Folded guifg=#ffc107 guibg=none
hi Normal guibg=#000000
hi SignColumn guibg=#000000
hi Visual gui=inverse
" Default syntax
hi Comment guifg=#666666 gui=italic
hi Conditional guifg=#c9d05c gui=italic
hi Repeat guifg=#c9d05c gui=italic
hi Exception guifg=#9fa8da
hi Keyword guifg=#c0ca33
hi Operator guifg=#ab47bc
hi Special guifg=#ce93d8
hi String guifg=#aed581
hi Title guifg=#d1c4e9
" Typescript
hi typescriptAssign guifg=#ab47bc
hi typescriptAsyncFuncKeyword guifg=#c0ca33 gui=italic
hi typescriptBinaryOp guifg=#26a69a
hi typescriptDotNotation guifg=#81c784
hi typescriptFuncCallArgComma guifg=#ab47bc
hi typescriptFuncKeyword guifg=#c0ca33 gui=italic
hi typescriptUnaryOp guifg=#26a69a
hi typescriptObjectSpread guifg=#81c784
hi typescriptOperator guifg=#ff9800
hi typescriptRepeat guifg=#c9d05c gui=italic
hi typescriptRestOrSpread guifg=#81c784
hi typescriptStatementKeyword guifg=#009688 gui=italic
hi typescriptTemplateSB guifg=#ab47bc
hi typescriptTypeAnnotation guifg=#b2dfdb
hi typescriptTypeBrackets guifg=#ab47bc
" Coc
hi CocErrorHighlight guifg=#f44336 gui=underline
hi CocHighlightText guibg=#78909c
hi GitGutterAdd guifg=#81c784
hi GitGutterChange guifg=#fff176
hi GitGutterDelete guifg=#e57373
hi CocCodeLens guifg=#455a64
" Syntax
hi typescriptLogicSymbols guifg=#26a69a
hi typescriptFuncKeyword guifg=#ce93d8
" Css
hi cssNoise guifg=#9fa8da
hi cssImportant guifg=#E06C75
hi cssAttrComma guifg=#81c784
" HTML
hi htmlTagName guifg=#f48fb1
hi htmlArg guifg=#ffc107
hi htmlSpecialTagName guifg=#f48fb1
" Rust
hi CocRustChainingHint guifg=#00695c gui=italic
hi CocRustTypeHint guifg=#4db6ac
" Flutter & dart
hi FlutterClosingLabel guifg=#00695c gui=italic
hi link dartTypedef Special
hi link dartLibrary Special
hi dartClassDecl guifg=#c0ca33 gui=italic
hi dartStorageClass guifg=#c0ca33 gui=italic
hi link dartRepeat typescriptRepeat
hi link dartStatement typescriptStatementKeyword

""" Helper
nmap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
