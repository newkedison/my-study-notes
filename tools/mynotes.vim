" Last Change: 2011-12-05 21:04:10
" Vim syntax file
" FileType: my notes
" Maintainer:	newkedison

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match nNote       display "注意\ze[：:]"
syn match nTitle      display "^=.*=$"
syn match nIndex      display "^\(\s\s\)*\zs\d\+\ze[\.。、,，: ：]"
syn match nIndex      display "^\(\s\s\)*\zs\d\+\ .*$"
syn match nChapter    display "^\s*\zs\[.\+\]\ze\s*$"
syn match nQuote      display "[\"“”].\{-}[\"”“]"
syn match nShellCmd   display "^\$\ \zs.\+"
syn match nVimCmd     display "^:\zs.\+"
syn match nReference  display "\(参考\|来源\)[：:].\+$"

syn region nBlock     start=/[-=]\{10,}[^-=]\+[-=]\{10,}/ end=/[-=]\{20,}/ contains=nShellCmd

hi def link nNote               Todo
hi def link nIndex              Comment
hi def link nTitle              Include
hi def link nChapter            Type
hi def link nQuote              String
hi def link nShellCmd           Statement
hi def link nVimCmd             Statement
hi def link nReference          Operator
hi def link nBlock              Macro

let b:current_syntax = "mynotes"
