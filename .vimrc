set nu
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set clipboard=unnamed


"-------------------------------------------------------------------------------
" Vundle Plugin Manager
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"fuzzy file, buffer, mru, tag, ... finder for Vim.
"Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help
Plugin 'ctrlpvim/ctrlp.vim'

"git plugin
"type :help fugitive for help
Plugin 'tpope/vim-fugitive'

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

"Tab settings 
nmap <Left> gT
nmap <Right> gt

