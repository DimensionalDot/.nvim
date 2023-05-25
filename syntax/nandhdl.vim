" Vim syntax file
" Language: nand2tetris HDL
" Maintainer: Dimensional
" Latest Revision: March 5, 2023

if exists("b:current_syntax")
    finish
endif

syn keyword basicKeywords CHIP PARTS IN OUT CLOCKED BUILTIN
syn keyword bool true false

syn match value '\d\+'
syn match operator '\.\.\|\[\|\]\|(\|)\|{\|}\|:\|;\|=\|,'
syn match variable '[a-z][a-zA-Z0-9]*'
syn match chip '[A-Z][a-zA-Z0-9]*'
syn match comment '//.*$'
syn region comment start='/\*\*' end='\*/'
syn region comment start='/\*' end='\*/'

let b:current_syntax = "nandhdl"

hi def link basicKeywords Keyword
hi def link bool Boolean
hi def link value Constant
hi def link operator Delimiter
hi def link pinout Comment
hi def link variable Identifier
hi def link chip Function
hi def link comment Comment
