
set nocompatible              " be iMproved, required
filetype off                  " required
"syntax on
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Rebind <Leader> key
let mapleader = ","

set clipboard=unnamed

" settings for tabs
" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set termencoding=utf-8
set colorcolumn=80
highlight ColorColumn ctermbg=233
" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-C>



"-----------------------------------------------------------------------------
" Vundle Plugin Manager
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"fuzzy file, buffer, mru, tag, ... finder for Vim.
"Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help
Plugin 'ctrlpvim/ctrlp.vim'

" file system and directory
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs' 

"git plugin
"type :help fugitive for help
Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'

Plugin 'powerline/fonts'
"Powerline Plugin
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"auto complete
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"-------------------------------------------------------------------------------

filetype plugin indent on    " required

" ctrlp settings customization
let g:ctrlp_map = '<c-p>'
" re mapping keys to open always in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }


" Set the default opening command to use when pressing the above mapping:
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" PowerLine config
" https://coderwall.com/p/yiot4q/setup-vim-powerline-and-iterm2-on-mac-os-x
set laststatus=2
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols='fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

set guifont=Menlo\ For\ Powerline
"Tab settings 
nmap <Left> gT
nmap <Right> gt



"Theme Settings
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

"NERDTRee settings
autocmd vimenter * NERDTree
let NERDTreeMapOpenInTab='<ENTER>'
:let g:nerdtree_tabs_open_on_console_startup = 1





