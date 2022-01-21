" Get the OS
let s:uname = system("echo -n \"$(uname)\"")

" Set leader
let mapleader=' '

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>

" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

" Underline based on upper line lengths
noremap <silent> <leader>ul mmyypVr-<Esc>`m

" Print current date and time
noremap <silent> <leader>date "_"=strftime("%F")<CR>p9h
noremap <silent> <leader>time "_"=strftime("%X")<CR>p7h

" Move lines
noremap <silent> <C-j> :move -2<CR>
noremap <silent> <C-k> :move +1<CR>

" Renumarate ordered lists in visual mode. Set cursor below the newly placed item and run this keybind
vnoremap <silent> <leader>rn :norm <C-v> <C-a><CR>

" Conceal markdown tags
set conceallevel=2

set showmode
" set noswapfile
set tabstop=4
set incsearch
set sidescroll=999
set scrolloff=999
set wildmenu

" Copy until the end of line
map Y y$

" Enter visual block mode by pressing q
nnoremap q <c-v>

" Case insensitive search
set ignorecase

" Will make a case sensitive search if we include \C
set smartcase

" Allows to increase letters using Ctrl - A
set nrformats=alpha

" Set clipboard to OS clipboard
set clipboard=unnamed

if s:uname == "Linux"
	set clipboard=unnamedplus
endif


