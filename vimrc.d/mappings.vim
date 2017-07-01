" ViM files
map <leader>K :exe "edit" . g:conf_dir . '/mappings.vim'<CR>
map <leader>H :exe "edit" . g:root_dir . '/help/quick-help.md'<CR>

" save & exit
nnoremap <leader>w  <esc>:w!<CR>
nnoremap <leader>q  <esc>:q!<CR>
nnoremap <leader>wa <esc>:wa!<CR>
nnoremap <leader>wq <esc>:wq!<CR>

" select & indent
nnoremap <leader>v  <esc>ggVG<CR>
nnoremap <leader>=  <esc>gg=G<CR>

" buffer cycle
map <leader>n :bn<CR>
map <leader>p :bp<CR>

" set working directory to the current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" toggle view options
nnoremap <silent> <leader>op :set paste! paste?<CR>
nnoremap <silent> <leader>ol :set list! list?<CR>
nnoremap <silent> <leader>ow :set wrap! wrap?<CR>

" clear highlight
nnoremap <leader>/ :nohlsearch<CR>

" fast scrolling
nmap <C-Up>     <C-U>
nmap <C-Down>   <C-D>
map  <C-Right>  20zl
map  <C-Left>   20zh

" switch between windows splits
nmap <silent> <A-Up>    :wincmd k<CR>
nmap <silent> <A-Down>  :wincmd j<CR>
nmap <silent> <A-Left>  :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" insert empty line in normal mode
nmap <C-Enter>  o<Esc>
nmap <S-Enter>  O<Esc>

" easyclip shadow an import vim function.
" Add Mark key (m) to use gm for 'add mark' instead of m
nnoremap gm m


"==============================================================================
"   Plugins
"==============================================================================

" netrw
map <leader>f :Explore<CR>

" Denite
map ;; :Denite buffer<CR>
call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('normal', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Up>',   '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('normal', '<Up>',   '<denite:move_to_previous_line>', 'noremap')

" NerdTree
map <F4> :NERDTreeToggle<CR>

" UltiSnip
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" choosewin
nmap  -  <Plug>(choosewin)

" move
let g:move_map_keys = 0
vmap <S-A-Down> <Plug>MoveBlockDown
vmap <S-A-Up>   <Plug>MoveBlockUp
nmap <S-A-Down> <Plug>MoveLineDown
nmap <S-A-Up>   <Plug>MoveLineUp

