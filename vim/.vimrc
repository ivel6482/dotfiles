call plug#begin('~/.vim/plugged/')
	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'ryanoasis/vim-devicons'
	Plug 'dense-analysis/ale'
	Plug 'majutsushi/tagbar'
	Plug 'airblade/vim-gitgutter'
	Plug 'mhinz/vim-signify'
	Plug 'ap/vim-css-color'
	Plug 'ulwlu/elly.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'hzchirs/vim-material'
call plug#end()

set termguicolors
set noshowmode

set laststatus=2
set relativenumber
syntax on


set nocompatible

" air-line

let g:airline_theme='material'
let g:material_style='oceanic'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

set background=dark
colorscheme vim-material
