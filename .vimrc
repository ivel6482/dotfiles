"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
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

" Underline based on upper line length
noremap <silent> <leader>ul mmyypVr-<Esc>`m

" Print current date and time
noremap <silent> <leader>date "_"=strftime("%F")<CR>p9h
noremap <silent> <leader>time "_"=strftime("%X")<CR>p7h

" Move lines
noremap <silent> <C-j> :move -2<CR>
noremap <silent> <C-k> :move +1<CR>

" Copy till end
noremap Y y$
