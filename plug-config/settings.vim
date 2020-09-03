
" === Basic Settings 
set number
set relativenumber
set cursorline
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
" 编码自动识别
let &termencoding=&encoding 
" set fileencodings=utf-8,gbk,ucs-bom,cp936 
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

au InsertLeave *.go,*.sh,*.h,*.py,*.cpp,*.hpp write

" 退出
map <Leader>q :q<CR>
map <Leader>wq :wq<CR>
map <Leader>w :w<CR>

" === MapLeader
" let mapleader="\<space>"
let mapleader=";"
