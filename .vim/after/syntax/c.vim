" make C hightlight custom types ending with _t postfix.
" See https://github.com/bfrg/vim-cpp-modern/issues/16
" syn match cType "\h\w*_t\w\@!"
syn match cType "\h\w*_t\>"

" Operators
syn match cPtrOp "->"
syn match cStructAccessOp "[.]"
hi def link cPtrOp Include
hi def link cStructAccessOp Include

" Functions
syn match cUserFunctionPointer "(\s*\*\s*\h\w*\s*)\(\s\|\n\)*" contains=cDelimiter,cOperator
hi def link cUserFunctionPointer cFunction
