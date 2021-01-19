set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Auto complete"
Plugin 'valloric/youcompleteme'
" Better statusbar
Plugin 'vim-airline/vim-airline'
" Better file searching, mapped to ;
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
" Allow Unix commands within Vim, like :Rename
Plugin 'tpope/vim-eunuch'
" Surrounds selections with different tags
Plugin 'tpope/vim-surround'
" NERD TREE
Plugin 'preservim/nerdtree'
" NERD Commenter
Plugin 'scrooloose/nerdcommenter'
" Indent settings
Plugin 'editorconfig/editorconfig-vim'
" Color scheme
Plugin 'sjl/badwolf'
" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required

"" youcompleteme key binding
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

map ; :Files<CR>
map _ :GFiles<CR>
map <C-o> :NERDTreeToggle<CR>
set number
set iskeyword-=_
set clipboard=unnamed
colorscheme gruvbox
nnoremap <SPACE> <Nop>
filetype plugin on
let mapleader=" "
