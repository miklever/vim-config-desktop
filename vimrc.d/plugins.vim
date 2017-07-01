call plug#begin(g:root_dir . '/plugged')


" Appearance
"==========================================================

" lightweight status line
Plug 'bling/vim-airline'
Plug 'ntpeters/vim-airline-colornum'

" start screen
Plug 'mhinz/vim-startify'

" filetype glyphs
Plug 'ryanoasis/vim-devicons'

" gruvbox color theme
Plug 'morhetz/gruvbox'

" tomorrow color theme
Plug 'chriskempson/vim-tomorrow-theme'


" Basic
"==========================================================

" file explorer
Plug 'scrooloose/nerdtree'

" fuzzy file search
Plug 'ctrlpvim/ctrlp.vim'

" denite & and it`s plugins
Plug 'Shougo/denite.nvim'
Plug 'rafi/vim-denite-session'

" simplified clipboard functionality
Plug 'svermeulen/vim-easyclip'

" repeat last colon command
Plug 'tpope/vim-repeat'

" automatically switch keyboard layout when leaving insert mode
if IsWindows()
    Plug 'lyokha/vim-xkbswitch'
endif


" Search & replace
"==========================================================

" ack/grep
Plug 'mileszs/ack.vim'

" code search and view tool
Plug 'dyng/ctrlsf.vim'

" highlights the {pattern} parameter from |:substitute| {pattern}
Plug 'osyo-manga/vim-over'


" Text manipulation
"==========================================================

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" surround
Plug 'tpope/vim-surround'

" alignment
Plug 'junegunn/vim-easy-align'

" moves lines and selections
Plug 'matze/vim-move'


" Utilities
"==========================================================

" increase or decrease date and time
Plug 'tpope/vim-speeddating'

" URL-based hyperlinking
Plug 'vim-scripts/utl.vim'

" adjust font size via keypresses
Plug 'vim-scripts/fontsize'

" reveal character representation
Plug 'tpope/vim-characterize'

" land on window you chose like tmux's <display-pane>
Plug 't9md/vim-choosewin'

" additional keyboard mappings
Plug 'tpope/vim-unimpaired'


" IDE features
"==========================================================

" syntax checking
Plug 'neomake/neomake'

" ultimate solution for snippets
Plug 'SirVer/ultisnips'

" repository which contains snippets for various programming languages
Plug 'honza/vim-snippets'

" provides different commenting operations and styles
Plug 'scrooloose/nerdcommenter'

" provides automatic closing of quotes, parenthesis and brackets
Plug 'Raimondi/delimitMate'

" visually displaying indent levels
Plug 'Yggdroot/indentLine'

" manipulating and moving between function arguments
Plug 'PeterRincker/vim-argumentative'

" git wrapper
Plug 'tpope/vim-fugitive'

" extended % matching for HTML, LaTeX, and many other languages
Plug 'tmhedberg/matchit'


" Language & syntax support
"==========================================================

Plug 'plasticboy/vim-markdown'
Plug 'othree/xml.vim'
Plug 'elzr/vim-json'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'ternjs/tern_for_vim'

" HTML / CSS
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'

" Telecom
Plug 'ipoddubny/asterisk-vim'
Plug 'benohara/cisco.vim'
Plug 'vim-scripts/rfc-syntax'

call plug#end()


" Load plugins settings
"==========================================================

for fpath in split(globpath(g:conf_dir, '/plugins/*.vim'), '\n')
    exe 'source' fpath
endfor

