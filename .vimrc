set shell=/bin/bash

execute pathogen#infect()
filetype plugin indent on

syntax on
colorscheme onedark

set number
set tabstop=4 shiftwidth=4 expandtab
set shiftround
nnoremap ,<Tab> "set relativenumber!"

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
nnoremap ˙ :tabfirst<CR>
nnoremap ∆ :tabprev<CR>
nnoremap ˚ :tabnext<CR>
nnoremap ¬ :tablast<CR>

let mapleader = ','
nnoremap \] :NERDTreeToggle<CR>

map \\ <Plug>(easymotion-prefix)

nmap <Tab>j \\w
nmap <Tab>k \\b

nnoremap J 23j
nnoremap K 23k

inoremap <C-u> <esc>viwUea
nnoremap <C-u> viwUe

inoremap jk <esc>

inoremap $nm if __name__ == '__main__':<CR>
inoremap $ibs from bs4 import BeautifulSoup as bs<CR>
inoremap $sb #!/usr/bin/env python3

command! Rc :tabnew ~/.vimrc 
command! Src :source ~/.vimrc

inoremap ,, <esc>la, ''<esc>i
" inoremap ,. <esc>lla
inoremap ;' <ESC>A:<CR>
inoremap ;; ():<CR>
inoremap ; <esc>:
inoremap \; ;
nnoremap ;; :!

nnoremap <C-Right> i
nnoremap ci9 ci(

inoremap ª (
inoremap AA <ESC>A

