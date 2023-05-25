" Vim syntax file
" Language: nand2tetris ASM
" Maintainer: Dimensional
" Latest Revision: March 5, 2023

if exists("b:current_syntax")
    finish
endif

syn match identifier '[a-zA-Z0-9_.$:]*'

syn keyword function add sub neg eq gt lt and or not pop push label goto function call return
syn match function 'if-goto'

syn keyword keyword local argument this that constant static temp pointer

syn match constant '\d\+'

syn match comment '//.*$'

let b:current_syntax = "nandvm"
