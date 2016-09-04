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
"set textwidth=100	
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

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
colorscheme koehler
let g:airline_theme='murmur'