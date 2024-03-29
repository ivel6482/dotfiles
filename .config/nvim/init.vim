" init autocmd
autocmd!

" set script encoding
scriptencoding utf-8

" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set number
syntax enable
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=fish
set showmode
set tabstop=4
set incsearch
set sidescroll=999
set scrolloff=999
set wildmenu
" set backupskip=/tmp/*,/private/tmp/*

" incremental substitution
if has('nvim') 
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
	set inccommand=split
endif

set nosc noru nosm " what does this do?
" don't redraw while executing macros (good performance config)
set lazyredraw
set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai
set si
set nowrap
set backspace=start,eol,indent
set path+=**
set wildignore+=*/node_modules/*
" add asterisks in block comments
set formatoptions+=r
set cursorline

" file types
" js
au BufNewFile,BufRead *.es6 setf javascript
" typescript
au BufNewFile,BufRead *.ts setf typescript
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown

" Imports
runtime ./plug.vim
runtime ./maps.vim

" true color
if exists("&termguicolors") && exists("&winblend")
	syntax enable
	set termguicolors
	set winblend=0
	set wildoptions=pum
	set pumblend=5

  " Oceanic
  let g:material_style='oceanic'
  set background=dark
  colorscheme vim-material

  
  " enable italics
  let g:material_terminal_italics = 1
endif

