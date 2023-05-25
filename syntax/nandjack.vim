" Vim syntax file
" Language: nand2tetris Jack
" Maintainer: Dimensional
" Latest Revision: March 10, 2023

if exists("b:current_syntax")
    finish
endif

syn match jackClassName "[a-zA-Z0-9]\+" contained

syn keyword jackFunctionDec class constructor method function nextgroup=jackClassName skipwhite
syn keyword jackType int boolean char void
syn keyword jackVariableDec var static field nextgroup=jackType skipwhite
syn keyword jackFlowDec let do if else while return
syn keyword jackConstant true false null
syn keyword jackThis this


syn match jackClassName "[A-Z][a-zA-Z0-9_]*"
syn match jackIdentifier "[a-z_][a-zA-Z0-9_]*"

syn match jackConstant '\d\+'
syntax region jackString start=/"/ end=/"/

syn match jackOperator '[=.+\-\*/&|\~<>]'
syn match jackDelimiter '[()[\]{},;]'

syn match jackFunctionName "[a-zA-Z0-9_]\+\ze("

syn match comment '//.*$'
syn match comment '/\*\*.*\*/'
syn match comment '/\*.*\*/'

let b:current_syntax = "nandjack"

hi link jackFunctionName function
hi link jackIdentifier identifier
hi link jackString string
hi link jackFunction function
hi link jackFlowDec keyword
hi link jackConstant constant
hi link jackThis identifier
hi link jackDelimiter delimiter
hi link jackOperator operator
hi link jackVariableDec keyword 
hi link jackClassName type
hi link jackType type
hi link jackFunctionDec keyword
