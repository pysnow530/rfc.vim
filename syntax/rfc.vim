" Vim syntax file
" Language:	    rfc
" Maintainer:	pysnow530 <pysnow530@163.com>
" Last Change:	2017 Jul 26

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syntax case ignore

" Header and footers
syn region rfcHeader start=/^RFC \d\+/ end=/$/ oneline
syn region rfcFooter start=/^/ end=/\[Page \d\+\]$/ oneline
syn region rfcTitle start=/^\s*\(\d\+\.\)\(\w\+\.\)*  / end=/$/ oneline

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link rfcHeader           Comment
hi def link rfcFooter           Tabline
hi def link rfcTitle            Title

let b:current_syntax = "rfc"

" vim: ts=4
