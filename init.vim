" NeoVim configuration

" Python Environment

let g:python3_host_prog = '/usr/bin/python'

let mapleader=";"

" Vim Plug System
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Vim Airline
Plug 'vim-airline/vim-airline'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" NERDTree Tab
Plug 'jistr/vim-nerdtree-tabs'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Enhanced CPP
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'h']}

" Auto Pair
Plug 'jiangmiao/auto-pairs'

Plug 'Chiel92/vim-autoformat'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" colorscheme gruvbox
Plug 'morhetz/gruvbox'
" colorscheme one
Plug 'rakr/vim-one'

" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'

Plug 'rizzatti/dash.vim'

" Initialize plugin system
call plug#end()

" Basics

filetype plugin indent on
syntax on
set number
set relativenumber
set ignorecase
set incsearch
set showmatch
set tabstop=4
set shiftwidth=4
set autoindent
set hlsearch

set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用
colorscheme monokai " 主题
set background=dark " 主题背景 dark-深色; light-浅色

let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_def_mapping_enabled = 1
let g:go_code_completion_enabled = 1

" 直接通过 go run 执行当前文件
autocmd FileType go nmap <leader>r :GoRun %<CR>

map <Leader>q :q<CR>
map <Leader>wq :wq<CR>
map <Leader>w :w<CR>
" tab 标签页切换快捷键
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>

" Plugin Settings
"let NERDTreeMapOpenInTab='<ENTER>'

map <leader>t :NERDTreeToggle<CR>

let g:ycm_use_clangd = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

" LeaderF 
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" Search Path
set path+=/usr/local/opt/qt5/include/QtCore
