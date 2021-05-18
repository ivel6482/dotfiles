" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ryanoasis/vim-devicons'
	Plug 'hzchirs/vim-material'
	Plug 'tpope/vim-fugitive'
  Plug 'sheerun/vim-polyglot'
  Plug 'mbbill/undotree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/vim-gist'
	Plug 'mattn/webapi-vim' 
	Plug 'airblade/vim-rooter'
	" telescope when neovim reaches 0.5
	" tree sitter when neovim reaches 0.5
	" Plug 'ervandew/supertab' " better tab completion.
	" Plug 'mattn/gist-vim'    " quickly put code into a gist
	" Plug 'prettier/vim-prettier' " code formatting
	" Plug 'mbbill/undotree'       " undo mgmt 
	" Plug 'mattn/emmet-vim'       " emmet
call plug#end()

set termguicolors
set noshowmode

set tabstop=2
set guicursor=
" set cursorcolumn
set shiftwidth=2
set expandtab

set laststatus=2
set relativenumber
set nu
set nohlsearch
set noerrorbells
set hidden
" set noswapfile
" set backup
set smartcase
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
syntax on


set nocompatible
filetype plugin on

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" vmap <leader>f <Plug>(coc-format-selected)
" nmap <leader>f <Plug>(coc-format-selected)

" air-line

let g:airline_theme='material'
let g:material_style='oceanic'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

set background=dark
colorscheme vim-material
highlight Normal guibg=none
" highlight CursorColumn guibg=#404040

" Remaps
let mapleader = " " " default is \ 
nnoremap <leader>f :Prettier
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-reference)
nnoremap <C-p> :GFiles<CR>

