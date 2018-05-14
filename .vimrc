" Shell
set shell=/bin/bash


" Pathogen for plugins
execute pathogen#infect()
filetype plugin indent on


" Syntax and colors
syntax on
colorscheme onedark
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%80v', 100)


" Tab formatting
set tabstop=4 shiftwidth=4 expandtab
set shiftround


" Line numbers and relative toggle
set number
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction
nnoremap <TAB>q :call NumberToggle()<CR>


" Searching
set incsearch
set ignorecase
set smartcase
set hlsearch


" Unwanted chars
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·


" No arrow nav in insert mode for now
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>


" Map leaders
let mapleader = ','


" Basic navigation and command
nnoremap ; :
nnoremap ;; :!
inoremap ; <ESC>:
inoremap \; ;
inoremap jk <ESC>
inoremap AA <ESC>A
nnoremap J 23j
nnoremap K 23k


" Tab and pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap ˙ :tabfirst<CR>
nnoremap ∆ :tabprev<CR>
nnoremap ˚ :tabnext<CR>
nnoremap ¬ :tablast<CR>
nnoremap t<SPACE> :tabnew<CR>


" Shortcuts for functions and parameters
inoremap ,, <ESC>la, ''<ESC>i
inoremap ;' <ESC>A:<CR>
inoremap ;; ():<CR>


" Literal undoubled special chars
inoremap \' '
inoremap \" "
inoremap \( (
inoremap \[ [


" Change inner
nnoremap ci9 ci(
nnoremap ci, ci<


" Nerd tree
nnoremap \] :NERDTreeToggle<CR>


" Easymotion
map \\ <Plug>(easymotion-prefix)
nmap <TAB>j \\w
nmap <TAB>k \\b


" Python shortcuts
inoremap $sb #!/usr/bin/env python3
inoremap $nm if __name__ == '__main__':<CR>
inoremap $ibs from bs4 import BeautifulSoup as bs<CR>


" Edit/source vimrc
command! Rc :tabnew ~/.vimrc
command! Src :source ~/.vimrc
