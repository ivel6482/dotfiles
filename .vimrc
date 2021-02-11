  0 call plug#begin('~/.vim/plugged')
  1   Plug 'joshdick/onedark.vim'
  2   Plug 'sheerun/vim-polyglot'
  3   Plug 'itchyny/lightline.vim'
  4   Plug 'ap/vim-css-color'
  5 call plug#end()
  6 
  7 set termguicolors
  8  set noshowmode
  9 
 10 let g:lightline = {
 11   \ 'colorscheme': 'onedark'
 12   \ }
 13 
 14 set laststatus=2
 15 set relativenumber
 16 syntax on
 17 colorscheme onedark
~                         
