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
"Plugin 'preservim/nerdtree'
" NERD Commenter
Plugin 'scrooloose/nerdcommenter'
" Indent settings
Plugin 'editorconfig/editorconfig-vim'
" Color scheme
Plugin 'sjl/badwolf'
" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'morhetz/gruvbox'
Plugin 'taglist.vim'
call vundle#end()            " required
filetype plugin indent on    " required

function! TagJumpPython()
        let l:orig_keyword = &iskeyword
        set iskeyword+=_
        let l:word = expand("<cword>")
        let &iskeyword = l:orig_keyword
        execute "tjump " . l:word
endfunction

nmap <C-X> :<C-u>call TagJumpPython()<CR>


"" youcompleteme key binding
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

map ; :Files<CR>
map _ :GFiles<CR>
set number
set mouse=a
set iskeyword-=_
set clipboard=unnamed
set background=dark
colorscheme gruvbox
nnoremap <SPACE> <Nop>
filetype plugin on
let mapleader=" "
