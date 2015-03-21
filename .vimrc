"" Vundle required 
set nocompatible
filetype off
set ffs=unix,mac,dos

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

let os=substitute(system('uname'), '\n', '', '')
let is_windows = os == 'MINGW32_NT-6.2' || os == 'MINGW32_NT-6.1'

"" Custom plugins
"" Languages
Plugin 'leafgarland/typescript-vim'
Plugin 'wting/rust.vim'

"" Extensions
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'

"" Vundle init

call vundle#end()
filetype plugin indent on

"" Base config
set nu
syntax on
set encoding=utf8
set relativenumber
if is_windows == 1
	let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' 
else
	set term=xterm-256color
endif

set modeline
set modelines=5

"" CtrlP
if is_windows == 1
	let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' 
endif

let g:ctrlp_by_filename = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'
let g:ctrlp_working_path_mode = 0

"" powerline
if is_windows == 0
	python import sys; sys.path.append("~/Library/Python/2.7/lib/python/site-packages/")
	python from powerline.vim import setup as powerline_setup
	python powerline_setup()
	python del powerline_setup
	set laststatus=2
	set noshowmode
endif

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
if os == 'Darwin' || os == 'Mac' 
	hi CursorLine term=bold cterm=bold ctermbg=black
else
	hi CursorLine term=bold cterm=bold ctermbg=darkgrey guibg=Darkgrey 
endif

"" Tabs/splits
set splitright
set splitbelow
