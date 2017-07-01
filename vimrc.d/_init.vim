" map leaders
let mapleader = ","
let maplocalleader = " "

" order matters
exec "source" . g:conf_dir . "/plugins.vim"
exec "source" . g:conf_dir . "/commands.vim"
exec "source" . g:conf_dir . "/settings.vim"
exec "source" . g:conf_dir . "/autocommands.vim"
exec "source" . g:conf_dir . "/mappings.vim"
exec "source" . g:conf_dir . "/colors.vim"

" os specific settings
exec "source" . g:conf_dir . "/os/ubuntu-gnome.vim"
