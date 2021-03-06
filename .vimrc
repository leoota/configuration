" setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set cursorcolumn
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
syntax enable

"set list listchars=tab:/>/-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

"if has('nvim')
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugin'}
"else
"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#eneble_at_startup = 1

"call plug#begin('/home/leo/.vim/plugged')
"Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}
"call plug#end()

" call vundle#begin()
" Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}
" call vundle#end()

