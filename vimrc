syntax on
set backspace=indent,eol,start
set pyxversion=3
set laststatus=2
set incsearch
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=utf-8
set termguicolors
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=100
set shortmess+=c
set smartcase
set ttyfast
set title
set background=dark
set number relativenumber
set ruler
set cursorline

autocmd BufWritePre *.rb :%s/\s\+$//e

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

imap jj <Esc>
