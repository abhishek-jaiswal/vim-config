" vim Settings

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

set clipboard=unnamed
set nu
" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set encoding=utf-8
"set editing-mode vi

" Python Indentation
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4 
    \ colorcolumn=80 
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" This will mark extra whitespace as bad, and probably color it red.
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


au BufNewFile,BufRead *.js, *.html, *.css setlocal tabstop=2
   \  softtabstop=2
   \  shiftwidth=2



set backspace=indent,eol,start


"-----------------------------------------------------------------------------
" Vundle Plugin Manager
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

" fuzzy file, buffer, mru, tag, ... finder for Vim.
" Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'Valloric/YouCompleteMe'

"python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()
"----------------------------------------------------------------------------

let mapleader = ','

" show a visual line under the cursor's current line
set cursorline


" show the matching part of the pair for [] {} and ()
set showmatch

" powerline plugin
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

" enable all Python syntax highlighting features
let python_highlight_all = 1


" Theme Settings
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized


" ctrlp settings customization
let g:ctrlp_map = '<c-p>'


" to run current buffer python code
nnoremap <F9> :echo system('python2 "' . expand('%') . '"')<cr>
nnoremap <F10> :echo system('python3 "' . expand('%') . '"')<cr>




