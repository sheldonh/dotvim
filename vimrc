set nocompatible

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

command -bar -nargs=1 OpenURL :!gnome-open <args>

nnoremap <C-w>t :tabnew<CR>
"nnoremap ,s :exec "!clear; bundle exec spec -cfs %:".line(".")<CR>
"nnoremap ,S :exec "!clear; bundle exec spec -cfs %"<CR>

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

if version >= 730
	set colorcolumn=133
	highlight ColorColumn cterm=none ctermbg=darkgray
end

highlight LineNr cterm=none ctermfg=darkgray
highlight StatusLine cterm=none ctermbg=darkgray

set laststatus=2
set nonumber
set statusline=%{fugitive#statusline()}%=[%f:%l][%c]%m%r[%P]
