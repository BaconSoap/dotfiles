"" Vundle required 
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"" Custom plugins
"" Languages
Plugin 'leafgarland/typescript-vim'

"" Vundle init

call vundle#end()
filetype plugin indent on

"" Base config
set nu
syntax on
set encoding=utf8
set relativenumber

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" mode aliases
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap ; :

""aliases
let mapleader=","
nnoremap <leader><leader> <c-^>
nnoremap <leader>h :set cursorline!<CR>

"" Color
colorscheme default 
set background=dark

set cursorline
hi CursorLine term=bold cterm=bold ctermbg=darkgrey 
