if exists("b:current_syntax")
    finish
endif

syn match text '/^\w+$/'
syn region celDescBlock start="{" end="}" fold transparent

syn keyword levelfatal contained FATAL
syn match fatalstatement "^.*FATAL.*$" contains=levelfatal

syn keyword levelerror contained ERROR
syn match errorstatement "^.*ERROR.*$" contains=levelerror

syn keyword levelwarn contained WARN
syn match warnstatement "^.*WARN.*$" contains=levelwarn

syn keyword levelinfo contained INFO
syn match infostatement "^.*INFO.*$" contains=levelinfo

syn keyword leveldebug contained DEBUG
syn match debugstatement "^.*DEBUG.*$" contains=leveldebug

let b:current_syntax = "log4j"
hi def link levelerror Keyword
hi def link errorstatement Keyword
hi def link levelfatal Error
hi def link fatalstatement Error
hi def link levelwarn Debug
hi def link warnstatement Debug
hi def link levelinfo Identifier
hi def link infostatement Identifier

