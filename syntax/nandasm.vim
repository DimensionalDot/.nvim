" Vim syntax file
" Language: nand2tetris ASM
" Maintainer: Dimensional
" Latest Revision: March 9, 2023

if exists("b:current_syntax")
    finish
endif

syn keyword keyword JGT JEQ JGE JLT JNE JLE JMP
syn keyword keyword SP LCL ARG THIS THAT
syn keyword keyword SCREEN KBD

syn keyword identifier M D MD A AM AD AMD

" syn region labelRegion start='(' end=')' transparent contains=label,operator
syn match function '[A-Z0-9_$:]*'

syn match identifier '[a-zA-Z0-9_.$:]*[a-z][a-zA-Z1-9_.$:]*' " for some reason making the first char able to be a captial breaks things...

syn match operator '(\|)\|=\|;\|@\|+\|-\|!'

syn match constant '\(R\d*\)\@<!\d\+'
syn match constant 'R1[0-5]\|R[0-9]'

syn match comment '//.*$'

let b:current_syntax = "nandasm"
