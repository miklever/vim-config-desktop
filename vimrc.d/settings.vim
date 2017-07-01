"==============================================================================
"   Appearance
"==============================================================================

" GUI options
set guioptions-=m  " remove menu bar
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right scrollbar
set guioptions-=L  " remove left scrollbar
set guioptions-=e  " console tab menu

" startup window size
if IsWindows()
    set lines=999 columns=999
endif

if IsUnix() && has("gui_running")
    set lines=40 columns=160
endif

" color theme
let g:color_theme="gruvbox"

let g:gruvbox_italic=0
let g:gruvbox_invert_selection=0

exec "colorscheme " . g:color_theme
set background=dark

" required for some terminals (guake)
set t_Co=256

" font
if IsWindows()
    "set guifont=Consolas:h11
    set guifont=DejaVuSansMonoForPowerline_NF:h11
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 11
endif

" always displaying status line
set laststatus=2

" cursor shape for Konsole (works with multiple tabs and windows)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" editor
set number          " enable line numbers
set ruler           " show cursor position all the time
set nowrap          " disable line wrap
"set cursorline     " отключено (добавляет заметный лаг при перемещении курсора)


"==============================================================================
"   Language
"==============================================================================

set langmenu=en_US.UTF-8

if IsWindows()
    language messages en
else
    language messages en_US.UTF-8
endif


"==============================================================================
"   Preferences
"==============================================================================

" не выгружать текущий буфер при переключении в другой
" позволяет редактировать несколько файлов без необходимости сохранения
set hidden

" allow specific VIM settings (per project)
set exrc
set secure

" set keyword pattern
set iskeyword=@,48-57,_,192-255,#,-

" when splitting put the new window below/right the current one (окно справки тоже начинает открываться снизу)
set splitbelow splitright

" disable beep and visual bell
set noerrorbells
set visualbell
set t_vb=

" note: when the GUI starts, 't_vb' is reset to its default value - disable it again
if has("gui_running")
    autocmd GUIEnter * set vb t_vb=
endif


"==============================================================================
"   Formatting
"==============================================================================

" attempt to determine the type of a file based on its name and possibly its content
filetype plugin indent on

" syntax highlighting
syntax enable

" syntax coloring lines that are too long just slows down the world
set synmaxcol=256

" line endings
set fileformat=unix
set fileformats=unix,dos

" encoding
set encoding=utf-8
set fileencodings=utf8,cp1251
set termencoding=utf-8

" when a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again
set autoread

" indentation
set tabstop=4           " tab size
set softtabstop=4
set shiftwidth=4        " number of spaces inserted for indentation
set expandtab           " insert spaces instead tabs
set autoindent          " copy indent from current line when starting a new line
set smartindent         " do smart autoindenting when starting a new line

" folding
set foldmethod=indent   " lines with equal indent form a fold.
set foldlevel=3         " folds with a higher level will be closed (higher numbers will close fewer folds)
set nofoldenable        " don't fold by default

" special characters (отображение служебных символов)
" ATTENTION: этот параметр должен быть задан _не раньше_ чем указана кодировка файла
if has('multi_byte')
    set listchars=trail:·,eol:¶,nbsp:×
    "set listchars=tab:»\ ,trail:·,eol:¶,extends:→,precedes:←,nbsp:×
endif


"==============================================================================
"   Command line
"==============================================================================

" enhanced command-line completion mode
set wildmenu
set wildmode=list:longest

" show partial commands in the last line of the screen
set showcmd

set shortmess=a         " avoid hit enter to continue
set cmdheight=2


"==============================================================================
"   Clipboard
"==============================================================================

set paste  " paste mode

if IsWindows()
    set clipboard+=unnamed
else
    set clipboard=unnamedplus
endif


"==============================================================================
"   Search
"==============================================================================

set hlsearch            " highlight search terms
set incsearch           " show search matches as you type
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase, case-sensitive otherwise
set showmatch           " when a bracket is inserted, briefly jump to a matching one


"==============================================================================
"   Scrolling
"==============================================================================

set whichwrap=<,>,[,]   " automatically wrap left and right
set scrolljump=7        " min number of lines to scroll when the cursor gets off the screen
set scrolloff=7         " min number of lines to keep above and below the cursor
set lazyredraw          " to avoid scrolling problems


"==============================================================================
"   Backup & History
"==============================================================================

set history=1000       " remember more commands and search history
set undolevels=1000    " use many muchos levels of undo

" disable auto-saving
set nobackup
set noswapfile
set nowritebackup


"==============================================================================
"   Keyboard & Mouse
"==============================================================================
"
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" allow to use backspace
set backspace=indent,eol,start

set mouse=a            " enable the use of the mouse in all modes
set mousemodel=popup   " windows mode
set mousehide          " the mouse pointer is hidden when characters are typed


"==============================================================================
" Terminal Mode
"==============================================================================

" indicates a fast terminal connection
set ttyfast


"==============================================================================
" Ignore
"==============================================================================

set wildignore+=*.so,*.swp,*.zip,*.class,*.pyc
set wildignore+=**/node
set wildignore+=**/node_modules
set wildignore+=**/target


"==============================================================================
" Completion
"==============================================================================

set completeopt=longest,menuone

