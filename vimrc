set nocompatible

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

command -bar -nargs=1 OpenURL :!gnome-open <args>

nnoremap <C-w>t :tabnew<CR>

set bg=dark
if $COLORTERM=='gnome-terminal'
	set term=xterm-256color
	colorscheme railscasts
else
	colorscheme default
endif

set colorcolumn=132
