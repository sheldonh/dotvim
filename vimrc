set nocompatible

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

command -bar -nargs=1 OpenURL :!gnome-open <args>

let mapleader = " "

nnoremap <C-w>t :tabnew<CR>

nnoremap ' `
nnoremap ` '

set hlsearch
set incsearch
nmap <silent> <leader>n :silent :nohlsearch<CR>

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>w :set nolist!<CR>

nmap <leader>t :CtrlP<CR>
nmap <leader>f :CtrlPClearCache<CR>

nnoremap <leader>p :set invpaste paste?<CR>

imap <C-o> <Esc>o
imap <C-O> <Esc>O
imap <C-j> <Esc>Ji

" ruby specs
nnoremap <leader>s :exec "!clear; bundle exec rspec --drb -cfd " . bufname("%") . ":" . line(".")<CR>
nnoremap <leader>S :exec "!clear; bundle exec rspec --drb -cfd " . bufname("%")<CR>

" Clojure REPL
nnoremap <leader>E :%Eval<CR>
nnoremap <leader>e :%Eval<CR>

" gnome-terminal is special: http://vim.wikia.com/wiki/256_colors_in_vim
if $XDG_SESSION_DESKTOP=='gnome'
	set term=gnome-256color
endif
syntax enable
colorscheme railscasts

augroup myfiletypes
autocmd!
autocmd FileType ruby,eruby,yaml,cucumber,coffee,puppet set sw=2 st=2 ai et foldmethod=indent foldnestmax=10 nofoldenable foldlevel=1
augroup END

au BufRead,BufNewFile *.md set filetype=markdown

"set colorcolumn=121
highlight ColorColumn cterm=none ctermbg=darkgray

set laststatus=2
set statusline=%{fugitive#statusline()}%=[%f:%l][%c]%m%r[%P]
highlight LineNr cterm=none ctermfg=darkgray
highlight StatusLine cterm=none ctermbg=darkgray

set nonumber
set hidden
set history=1000
set wildmenu
set wildmode=list:longest
set title
set ignorecase
set smartcase
set scrolloff=3

set wildignore+=doc/app
set wildignore+=node_modules
