" vim Settings

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

let mapleader = ','

"---------------------------------------------------------------------------
" Vundle Plugin Manager
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'		        " let Vundle manage Vundle, required
Plugin 'ctrlpvim/ctrlp.vim'		            " fuzzy search/workspace
Plugin 'Valloric/YouCompleteMe'		        " code completion
Plugin 'preservim/nerdtree'                 " Project and file navigation
"----------------------------=== Others ===--------------------------------
Plugin 'ryanoasis/vim-devicons'             " Dev Icons
Plugin 'tpope/vim-fugitive'                 " vim git wrapper
Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline


"-------------------------=== Python  ===------------------------------------
Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()
"--------------------------------------------------------------------------

filetype on
filetype plugin on
filetype plugin indent on

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set encoding=utf-8
set enc=utf-8	                            " utf-8 by default
set smarttab                                " set tabs for a shifttabs logic
set autoindent                              " indent when moving to the next line while writing code
set shell=/bin/bash
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration


set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set go+=a               " Visual selection automatically copied to the clipboard

set t_Co=256                                " 256 colors
set guifont=mononoki\ Nerd\ Font\ 18
colorscheme wombat256mod                    " set vim colorscheme
let g:airline_theme='wombat'                " set airline theme
syntax enable                               " enable syntax highlighting

set pyxversion=0
let g:loaded_python_provider = 1


"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" Python Settings
"=====================================================
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-C>


"=====================================================
"" NerdTree Settings
"=====================================================
autocmd vimenter * NERDTree

"=====================================================
"" DevIcon Settings
"=====================================================
" loading the plugin
