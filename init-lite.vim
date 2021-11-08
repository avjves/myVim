set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Better statusbar
Plugin 'vim-airline/vim-airline'
" Better file searching, mapped to ;
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
" Allow Unix commands within Vim, like :Rename
Plugin 'tpope/vim-eunuch'
" Surrounds selections with different tags
Plugin 'tpope/vim-surround'
" NERD Commenter
Plugin 'scrooloose/nerdcommenter'
" Indent settings
Plugin 'editorconfig/editorconfig-vim'
" Color scheme
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'
Plugin 'numirias/semshi'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()            " required
filetype plugin indent on    " required

map ; :Files<CR>
map _ :GFiles<CR>
set number
set mouse=a
set iskeyword-=_
set signcolumn=yes
set clipboard=unnamed
set background=dark
colorscheme gruvbox
nnoremap <SPACE> <Nop>
filetype plugin on
let mapleader=" "
