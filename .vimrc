filetype off

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

" set Leader to comma
let mapleader = ","

" setup tabbing for python
set tabstop=4
set shiftwidth=4
set expandtab

" number lines
set number

" set wrapping at character 79
set tw=79
set colorcolumn=80
highlight ColorColumn ctermbg=2

" make it easier to jump between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"" Toggle relative line number
function! NumberToggle()
    if(&relativenumber)
        set norelativenumber
        set number
    else
        "" Uncomment the following to display a '0' instead of the line
        " set nonumber
        set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAK<C-c>

" set the colorscheme to desert to suit a dark background
colorscheme desert
