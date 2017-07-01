" fullscreen
map <F11> <Esc>:call libcallnr('gvimfullscreen.dll', 'ToggleFullScreen', 0)<CR>

" explorer
command! -nargs=* -complete=dir Dir exe 'silent !start explorer \e,' . s:ResolveOSPath(<f-args>)

" terminal
command! -nargs=* -complete=dir Term exe 'silent !start conemu -dir ' . s:ResolveOSPath(<f-args>)

" Normalize OS path
function! s:ResolveOSPath(...)
    let path = (a:0 != 0) ? a:1 : ''
    if empty(path) || path == '.' | return getcwd() | endif
    if path =~ '^[A-Z]:' | return path | endif
    return getcwd() . '\\' . path
endfunction

