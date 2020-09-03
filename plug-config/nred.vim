"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" 打开和关闭NERDTree快捷键
" map <F10> :NERDTreeToggle<CR>
map <leader>N :NERDTreeToggle<CR> 
nmap <M-m> :NERDTreeFind<CR>


