" Vim syntax file
" Language:         nrpc
" Maintainer:       Trangle Null <me@trangle.top>
" Last Change:      $Date: 2020/10/31 $

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Block Doc
syn match   nrpcDefComment           /^\s*\/\/\/.*/
hi def link nrpcDefComment Comment

" Use block
syn keyword nrpcUseKeyword           use                              skipwhite skipempty nextgroup=
  \ nrpcDefPathIdentifier,
syn match   nrpcDefPathIdentifier    /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcDefPathDot,
  \ nrpcAsKeyword,
  \ nrpcUseSemi,
syn match   nrpcDefPathDot           /\./                   contained skipwhite skipempty nextgroup=
  \ nrpcDefPathIdentifier,
syn match   nrpcUseSemi              /;/                    contained
syn keyword nrpcAsKeyword            as                     contained skipwhite skipempty nextgroup=
  \ nrpcUseAlias,
syn match   nrpcUseAlias             /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcUseSemi,
hi def link nrpcUseKeyword           Keyword
hi def link nrpcDefPathIdentifier    Identifier
hi def link nrpcDefPathDot           Special
hi def link nrpcUseSemi              Special
hi def link nrpcAsKeyword            Keyword
hi def link nrpcUseAlias             Identifier

" Enum Block
syn keyword nrpcEnumKeyword          enum                             skipwhite skipempty nextgroup=
  \ nrpcEnumIdentifier,
syn match   nrpcEnumIdentifier       /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcEnumBody,
syn region  nrpcEnumBody             matchgroup=nrpcBrace start=/{/ end=/}/
  \                                                         contained skipwhite skipwhite contains=
  \ nrpcEnumItemName,
  \ nrpcEnumDeprecatedItem,
syn match nrpcEnumItemName           /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcEnumEq,
  \ nrpcEnumComma,
syn match nrpcEnumDeprecatedItem     /#.*,/                 contained skipwhite skipempty nextgroup=
  \ nrpcEnumDoc,
syn match   nrpcEnumEq               /=/                    contained skipwhite skipempty nextgroup=
  \ nrpcEnumValue,
syn match   nrpcEnumValue            /\v\c[+-]?(([1-9][0-9]*)|(0b[01]+)|(0o[0-7]+)|(0x[0-9A-F]+)|0)/
  \                                                         contained skipwhite skipempty nextgroup=
  \ nrpcEnumComma,
syn match   nrpcEnumComma            /,/                    contained                     nextgroup=
  \ nrpcEnumDoc,
syn match   nrpcEnumDoc              /.*/                   contained skipwhite skipempty nextgroup=
  \ nrpcEnumItemName,
  \ nrpcEnumDeprecatedItem,
hi def link nrpcEnumKeyword          Keyword
hi def link nrpcEnumIdentifier       Identifier
hi def link nrpcBrace                Special
hi def link nrpcEnumItemName         Identifier
hi def link nrpcEnumDeprecatedItem   Exception
hi def link nrpcEnumEq               Operator
hi def link nrpcEnumValue            Number
hi def link nrpcEnumComma            Special
hi def link nrpcEnumDoc              Comment

" Struct Block
syn keyword nrpcStructKeyword        struct                           skipwhite skipempty nextgroup=
  \ nrpcStructIdentifier,
syn match   nrpcStructIdentifier     /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcStructBody,
syn region  nrpcStructBody           matchgroup=nrpcBrace start=/{/ end=/}/
  \                                                         contained                     contains=
  \ nrpcStructItemName,
  \ nrpcStructDeprecatedItem,
syn match   nrpcStructItemName       /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcStructColon,
syn match   nrpcStructDeprecatedItem /#.*;/                 contained skipwhite skipempty nextgroup=
  \ nrpcStructDoc,
syn match   nrpcStructColon          /?\?:/                 contained skipwhite skipempty nextgroup=
  \ nrpcStructType,
syn match   nrpcStructType           /[A-Za-z][A-Za-z0-9]*\(\[\]\)\?/
  \                                                         contained skipwhite skipempty nextgroup=
  \ nrpcStructSemicolon,
syn match   nrpcStructSemicolon      /;/                    contained                     nextgroup=
  \ nrpcStructDoc,
syn match   nrpcStructDoc            /.*/                   contained skipwhite skipempty nextgroup=
  \ nrpcStructItemName,
  \ nrpcStructDeprecatedItem,
hi def link nrpcStructKeyword        Keyword
hi def link nrpcStructIdentifier     Identifier
hi def link nrpcStructItemName       Identifier
hi def link nrpcStructDeprecatedItem Exception
hi def link nrpcStructColon          Special
hi def link nrpcStructType           Type
hi def link nrpcStructSemicolon      Special
hi def link nrpcStructDoc            Comment

" Rpc Call Block
syn keyword nrpcFnKeyword            fn                               skipwhite skipempty nextgroup=
  \ nrpcFnIdentifier,
syn match   nrpcFnIdentifier         /[A-Za-z][A-Za-z0-9]*/ contained skipwhite skipempty nextgroup=
  \ nrpcFnParam,
syn region  nrpcFnParam              matchgroup=nrpcBrace start=/(/ end=/)/
  \                                                         contained skipwhite skipempty nextgroup=
  \ nrpcFnColon,
  \ nrpcFnSemicolon,
syn match   nrpcFnColon              /:/                    contained skipwhite skipempty nextgroup=
  \ nrpcFnReturnType,
syn match   nrpcFnReturnType         /[A-Za-z][A-Za-z0-9]*\(\[\]\)\?/
  \                                                         contained skipwhite skipempty nextgroup=
  \ nrpcFnSemicolon,
syn match   nrpcFnSemicolon          /;/                    contained
hi def link nrpcFnKeyword            Keyword
hi def link nrpcFnIdentifier         Identifier
hi def link nrpcFnParam              Type
hi def link nrpcFnColon              Special
hi def link nrpcFnReturnType         Type
hi def link nrpcFnSemicolon          Special
