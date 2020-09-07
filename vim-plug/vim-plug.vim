
" === Plugin 
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'phanviet/vim-monokai-pro'
" Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }
Plug 'keith/swift.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'mhartington/oceanic-next'
Plug 'Chiel92/vim-autoformat'
Plug 'skywind3000/asyncrun.vim'
call plug#end()


