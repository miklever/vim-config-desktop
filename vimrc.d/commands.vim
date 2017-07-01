"==============================================================================
"   Commands
"==============================================================================
"
command! ClearRegisters                 call ClearRegisters()
command! Tabify                         call Tabify()
command! Untabify                       call Untabify()
command! DeleteTrailingWhitespaces      call DeleteTrailingWhitespaces()
command! DeleteLeadingWhitespaces       call DeleteLeadingWhitespaces()
command! Trim                           call Trim()
command! DeleteBlankLines               g/^\s*$/d

"==============================================================================
"   Functions
"==============================================================================

" Clear clipboard registers
function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""'
        let i=i+1
    endwhile
endfunction

" Convert spaces to tabs
function! Tabify()
    set noexpandtab
    retab!
endfunction

" Convert tabs to spaces
function! Untabify()
    set expandtab
    retab!
endfunction

" Delete trailing whitespaces
function! DeleteTrailingWhitespaces()
    %s/\s\+$//ge
endfunction

" Delete leading whitespaces
function! DeleteLeadingWhitespaces()
    %le
endfunction

" Delete trailing & leading whitespaces
function! TrimLines()
    %s/\s\+$//ge
    %le
endfunction

" Get Vim syntax attibute ID
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

