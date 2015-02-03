set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme molokai

" Pathogen
 execute pathogen#infect()
 call pathogen#helptags() " generate helptags for everything in 'runtimepath'
 syntax on
 filetype plugin indent on
"finpathgen
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showmatch " Show matching braces.
set history=900 " keep track of last commands
set encoding=utf8

function OpenNERDTree()
  execute ":NERDTree"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()
nmap <ESC>t :OpenNERDTree<CR>
" disable nerdtree when is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler
"
" No annoying sound on errors
 set noerrorbells
 set novisualbell
 set t_vb=
 set tm=500
"
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl>\"|$
autocmd BufNewFile *.sh 0put =\"#!/usr/bin/env bash\<nl>\"|$
autocmd BufNewFile,BufRead *.json set ft=javascript

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
