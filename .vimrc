set nocompatible              " required
filetype off                  " required
set showtabline=2
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntax highlighting
Plugin 'vim-syntastic/syntastic'

" flake8 checker
Plugin 'nvie/vim-flake8'

" Ctrl + P plugin
Plugin 'kien/ctrlp.vim'

" Python identation
Plugin 'vim-scripts/indentpython.vim'

" Turn on line numbering
set nu
let python_highlight_all=1
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=120
set expandtab
set autoindent
set fileformat=unix
