filetype off

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

set number

set tw=79

set colorcolumn=80
highlight ColorColumn ctermbg=2

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
