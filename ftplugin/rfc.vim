" Vim filetype plugin
" Language:     rfc
" Maintainer:   pysnow530 <pysnow530@163.com>
" Last Change:  2017 Jul 29

if exists("b:did_ftplugin")
    finish
endif

function! RfcFold()
    let line = getline(v:lnum)

    " Regular headers
    if line =~ '^\s\{0}\d\+\.  '
        return '>1'
    elseif line =~ '^\s\{3}\d\+\.\d\+\.  '
        return '>2'
    elseif line =~ '^\s\{6}\d\+\.\d\+\.\d\+\.  '
        return '>3'
    endif

    return "="
endfunction

if has("folding") && exists("g:rfc_folding")
    setlocal foldexpr=RfcFold()
    setlocal foldmethod=expr
endif
