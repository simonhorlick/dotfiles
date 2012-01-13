filetype plugin on
filetype indent on
syntax on

let mapleader = ","

set t_Co=256
if has('gui_running')
    colorscheme google
    set guifont=Monaco:h12
    set guioptions-=m
    set guioptions-=T
else
    colorscheme molokai
endif
    
" Default formatting
set tabstop=4
set shiftwidth=4
"set nowrap
set textwidth=80
set number

" Break long lines
set fo+=a

" Insert appropriate number of spaces for a tab
set expandtab
set smarttab

" C-aware indentation
set smartindent

" Find search term while typing
set incsearch

" For vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = 'Preview'
let g:Tex_CompileRule_pdf = 'pdflatex --shell-escape --interaction=nonstopmode $*'

" Send Alt-X instead of special characters
" breaks hash key though
" set macmeta

" Remove backwards compatibility to vi
set nocompatible

" Keep a persistant undo file
" set undofile

" Unix like auto-completion
set wildmenu
set wildmode=list:longest

" Ignore case sensitivity when searching
set ignorecase

" ...but only if lower case letters are used.
set smartcase

inoremap jj <ESC>

set laststatus=2

" This shows what you are typing as a command.
set showcmd

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menu,menuone,longest

" to use libclang, must build it manually (this will give a static build)
" then it should just work
let g:clang_use_library=1

" open quickfix on error
let g:clang_complete_copen = 1
let g:clang_user_options='|| exit 0'

call pathogen#infect()

