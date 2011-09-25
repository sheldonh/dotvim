set nocompatible

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

command -bar -nargs=1 OpenURL :!gnome-open <args>

nnoremap <C-w>t :tabnew<CR>
nnoremap ,s :exec "!clear; rspec -cfs %:".line(".")<CR>
nnoremap ,S :exec "!clear; rspec -cfs %"<CR>

set bg=dark
if $COLORTERM=='gnome-terminal'
	set term=xterm-256color
	colorscheme railscasts
else
	colorscheme default
endif

augroup myfiletypes
autocmd!
autocmd FileType ruby,eruby,yaml,cucumber set sw=2 st=2 et foldmethod=indent foldnestmax=10 nofoldenable foldlevel=1
augroup END

highlight LineNr cterm=none ctermfg=darkgray
highlight StatusLine cterm=none ctermbg=darkgray
highlight ColorColumn cterm=none ctermbg=darkgray

set colorcolumn=133
set laststatus=2
set nonumber
set statusline=%{fugitive#statusline()}%=[%f][%c,%l][%P]
