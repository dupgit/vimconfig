set vb t_vb=".
setlocal spell spelllang=fr,en

call pathogen#infect()
syntax enable
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set number
set linebreak
"set showbreak=+++
"set textwidth=80
" If one wants to see a line a column 80
"set colorcolumn=80
set showmatch

set hlsearch

set autoindent
set cindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler

set undolevels=1000
set backspace=indent,eol,start

" Search ignoring case except if one letter in the search pattern is a capital
set ignorecase
set smartcase

" Automatically kills trailing white spaces for *.[ch] files.
autocmd BufWritePre *.[ch] :%s/\s\+$//e

" file named *.md are of type markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"let g:airline_theme='murmur'
let g:onedark_terminal_italics = 1
colorscheme onedark
set t_ut=
set switchbuf=usetab,newtab

" Trailing whitespace
highlight ws ctermbg=blue guibg=red
match ws /\s\+$/
