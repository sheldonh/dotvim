set nocompatible

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set bg=dark
if $COLORTERM=='gnome-terminal'
	set term=gnome-256color
	colorscheme railscasts
else
	colorscheme default
endif
