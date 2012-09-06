call pathogen#infect()

filetype plugin on
filetype indent on
syntax on

let mapleader = ","

set t_Co=256
if has('gui_running')
    set guifont=Monaco:h12
    set guioptions-=m
    set guioptions-=T
    set lines=25 columns=83
    colorscheme google
else
    colorscheme molokai
endif
    
" Default formatting
set tabstop=4
set shiftwidth=4
"set nowrap
set textwidth=79
set number

" Break long lines
set fo+=a

" Insert appropriate number of spaces for a tab
set expandtab
set smarttab

" C-aware indentation
set cindent
" Don't indent public keyword in classes
set cinoptions=h0
"set smartindent

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
set wildignore+=*.o,*.obj,.git

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

let g:clang_debug=1

" to use libclang, must build it manually (this will give a static build)
" then it should just work
let g:clang_use_library=1

" open quickfix on error
let g:clang_complete_copen = 1
" select suggestion and insert into code
let g:clang_auto_select=2
let g:clang_user_options='|| exit 0'

noremap <leader>p :python clang_plugin.jump_to_definition()<CR>
noremap <leader>o :python clang_plugin.jump_to_declaration()<CR>
noremap <leader>i :python clang_plugin.get_current_completions()<CR>
noremap <leader>m :make<CR>

map <Leader>t :!./test<CR>

call pathogen#infect()

