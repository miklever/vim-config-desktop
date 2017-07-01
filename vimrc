set nocompatible

" Identify platform
silent function! IsUnix()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction

silent function! IsWindows()
    return (has('win16') || has('win32') || has('win64'))
endfunction

" Declare config directories
if IsWindows()
    let g:root_dir="~/vimfiles"
elseif IsUnix()
    let g:root_dir="~/.vim"
endif

let g:conf_dir=root_dir . "/vimrc.d"

" Run initialiation
exec "source" . g:conf_dir . "/_init.vim"

