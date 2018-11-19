set nocompatible              " be iMproved, required
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'elzr/vim-json'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

filetype on
filetype plugin on 
syntax on
set number
set incsearch
set hlsearch
set laststatus=2
set statusline=%m%t[%c,%l/%L]
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
colorscheme mayansmoke

nnoremap gr :grep -r <cword> *<CR>

set tabstop=4
set shiftwidth=4
set expandtab
