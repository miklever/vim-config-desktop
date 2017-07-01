let g:XkbSwitchEnabled=1
let g:XkbSwitchIMappings=['ru']

" для разрешения конфликта с delimitMate (иначе вместо символа кириллицы вводится, находящася с ней на одной клавише, скобка или кавычка)
let g:XkbSwitchSkipIMappings={'*' : ['[', ']', '{', '}', "'", "\""]}

if IsWindows()
    let g:XkbSwitchLib= 'c:\Software\xkb-switch\libxkbswitch32.dll'
elseif IsUnix()
    let g:XkbSwitchLib= '/usr/local/lib/libxkbswitch.so'
endif
