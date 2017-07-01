call denite#custom#var('session', 'path', g:root_dir . '/session')

"==============================================================================
" Custom menus
"==============================================================================

nnoremap [menu] <Nop>
nmap <LocalLeader> [menu]
nnoremap <silent>[menu]u :Denite -winheight=15 -direction=topleft -mode=normal menu<CR>

let s:menus = {}

" Text menu
let s:menus.text = {
    \ 'description' : '              text edition                                          : [space]t'
\}

let s:menus.text.command_candidates = [
    \['delete trailing whitespaces                                : ',    'DeleteTrailingWhitespaces'],
    \['enable spell check                                         : ',    'exe "set spell spelllang=ru,en"'],
    \['disable spell check                                        : ',    'exe "set nospell"'],
    \['show hidden chars                                          : ,ol', 'normal ,ol!'],
    \['show current char info                                     : ga',  'normal ga'],
    \['open all folds                                             : zR',  'normal zR'],
    \['close all folds                                            : zM',  'normal zM'],
    \['toggle paste mode                                          : ,p',  'normal ,p'],
    \['tabs to spaces                                             : ',    'Untabify'],
    \['spaces to tabs                                             : ',    'Tabify'],
\]

exe 'nnoremap <silent>[menu]t :Denite -direction=topleft -mode=normal -winheight='.(len(s:menus.text.command_candidates) + 2).' menu:text<CR>'

" File options menu
let s:menus.fileopts = {
    \ 'description' : '          file options                                          : [space]o'
\}

let s:menus.fileopts.command_candidates = [
    \['fileencoding utf-8                             ',  'exe "set fenc=utf-8"'],
    \['fileencoding cp1251                            ',  'exe "set fenc=cp1251"'],
    \['fileformat unix                                ',  'exe "set ff=unix"'],
    \['fileformat dos                                 ',  'exe "set ff=dos"'],
\]

exe 'nnoremap <silent>[menu]o :Denite -direction=topleft -mode=normal -winheight='.(len(s:menus.fileopts.command_candidates) + 2).' menu:fileopts<CR>'

call denite#custom#var('menu', 'menus', s:menus)

