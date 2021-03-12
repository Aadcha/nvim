set nocompatible
set number
set nowrap
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=2
set smarttab
set incsearch
set ruler
set autoread
set noshowmode
syntax on
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree' " tree explorer
Plug 'tpope/vim-fugitive' " git 
Plug 'tpope/vim-commentary' " comments
Plug 'itchyny/lightline.vim' " statusbar
Plug 'junegunn/fzf' " fuzzy finder
Plug 'junegunn/fzf.vim' " fuzzy finder
Plug '907th/vim-auto-save' " auto-save
Plug 'Yggdroot/indentLine' " indent lines
Plug 'morhetz/gruvbox' " colorscheme
Plug 'arcticicestudio/nord-vim' " colorscheme
call plug#end()

" load colorscheme
colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
hi Visual term=reverse cterm=reverse guibg=Grey

" bind nerdtree to CTRL + n
map <silent> <C-n> :NERDTreeFocus<CR>

" bind fzf to CTRL + p
map <silent> <C-p> :Files<CR>

" auto-save on vim startup
let g:auto_save = 1

" auto-copmlete pairs
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}  
