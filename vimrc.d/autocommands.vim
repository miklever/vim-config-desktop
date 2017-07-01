" Omni-completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Neomake
autocmd! BufWritePost,BufEnter * Neomake

" CSS
augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=-
augroup END

" Markdown
au FileType markdown setlocal textwidth=100

" Asterisk
au BufNewFile,BufRead *sip.conf* setf asterisk
au BufNewFile,BufRead *sip_*.conf* setf asterisk
au BufNewFile,BufRead *extensions.conf* setf asterisk
au BufNewFile,BufRead *extensions_*.conf* setf asterisk

" Log4j
au BufRead,BufNewFile *.log setf log4j

" Cisco
au BufNewFile,BufRead *.cisco setf cisco

" RFC
au BufRead,BufNewFile *.txt
    \ if expand('%:t') =~? 'rfc\d\+' |
    \   set filetype=rfc |
    \ endif

