" fullscreen
map <silent> <F11> :call system('wmctrl -ir ' . v:windowid . ' -b toggle,fullscreen')<CR>

" nautilus
command! -nargs=* -complete=dir Dir exec 'silent !nautilus ' . s:ResolveOSPath(<f-args>)

" terminal
command! -nargs=* -complete=dir Term exec 'silent !gnome-terminal --working-directory=' . s:ResolveOSPath(<f-args>)

" web browsers
nnoremap <leader>rf :exe ':silent !firefox % &'<CR>
nnoremap <leader>rc :exe ':silent !google-chrome % &'<CR>

" Zeal
nnoremap <leader>z :!zeal '<cword>'&<CR><CR>

" Resovle OS path
function! s:ResolveOSPath(...)
    let path = (a:0 != 0) ? a:1 : ''
    if empty(path) || path == '.' | return getcwd() | endif
    return expand(path)
endfunction

