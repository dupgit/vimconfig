set vb t_vb=".
setlocal spell spelllang=fr,en

call pathogen#infect()

" vim status line definition based on Syntastic
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

" Syntax highlighting.
syntax enable

" Highlight search results
set hlsearch
" Shows macchs while typing search string
set showmatch
" Search ignoring case except if one letter
" in the search pattern is a capital.
set ignorecase
set smartcase

" Uses automatic indentation does not interfere
" with other indentation parameters.
set autoindent
"set cindent
"set smartindent
filetype plugin indent on

" https://vim.fandom.com/wiki/Converting_tabs_to_spaces
" Cause <Tab> and <BS> to insert and delete the correct
" number of spaces (4).
set softtabstop=4
" Uses 4 spaces characters for automatic indentation
set shiftwidth=4
" Inserts shiftwidth characters (4) in front of a line.
set smarttab
" Use spaces instead of tabs
set expandtab

set ruler
set undolevels=1000

" Backspace behavior
set backspace=indent,eol,start

" Automatically kills trailing white spaces for *.[ch] files.
autocmd BufWritePre *.[ch] :%s/\s\+$//e

" Automatically recognize that *.md files are of markdown type.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:onedark_terminal_italics = 1
colorscheme onedark
set t_ut=
set switchbuf=usetab,newtab

" Trailing white spaces in blue (CLI)
" and red (GUI).
highlight ws ctermbg=blue guibg=red
match ws /\s\+$/

map <C-J> <C-]>
map <C-N> <C-T>
