" Right-click on selection should bring up a menu
set mouse=a
set mousemodel=popup_setpos

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

" this makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts
let g:is_posix = 1

set textwidth=80

" this makes the color after the textwidth column highlighted
set colorcolumn=+1

" options for formatting text; see :h formatoptions
set formatoptions=tcroqnj

set ignorecase

set nosmartindent

set title

set number
set relativenumber

set shiftwidth=4
set expandtab

