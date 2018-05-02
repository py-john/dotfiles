set shell=/bin/bash

execute pathogen#infect()
filetype plugin indent on

syntax on
colorscheme onedark

set number
set tabstop=4 shiftwidth=4 expandtab
set shiftround
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
nnoremap ,<Tab> :set relativenumber! <bar> :set number!<CR>

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%80v', 100)
nnoremap ; :

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

nnoremap t<space> :tabnew<Cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap ˙ :tabfirst<CR>noremap ∆ :tabprev<CR>
nnoremap ˚ :tabnext<CR>
nnoremap ¬ :tablast<CR>

let mapleader = ','
nnoremap \] :NERDTreeToggle<CR>

map \\ <Plug>(easymotion-prefix)

nmap <Tab>j \\w
nmap <Tab>k \\b

nnoremap J 23j
nnoremap K 23k

" inoremap <C-u> <esc>viwUea
" nnoremap <C-u> viwUe

inoremap jk <esc>

inoremap $nm if __name__ == '__main__':<CR>
inoremap $ibs from bs4 import BeautifulSoup as bs<CR>
inoremap $sb #!/usr/bin/env python3

command! Rc :tabnew ~/.vimrc
command! Src :source ~/.vimrc

inoremap ,, <esc>la, ''<esc>i
inoremap ;' <ESC>A:<CR>
inoremap ;; ():<CR>
inoremap ; <esc>:
inoremap \; ;
nnoremap ;; :!

nnoremap ci9 ci(

inoremap AA <ESC>A
inoremap \' '
inoremap \" "
inoremap \( (

" Relative or absolute number lines
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction
nnoremap <Tab>q :call NumberToggle()<CR>
