call pathogen#infect()

filetype plugin on
filetype indent on
syntax on

set path=.,/usr/local/include,/usr/include,/usr/local/include/c++/4.6.0/

let mapleader = ","

set t_Co=256
colorscheme molokai
    
" Default formatting
set tabstop=4
set shiftwidth=4
"set nowrap
set textwidth=79
set number

" Don't do weird stuff with backspace key
set backspace=indent,eol,start

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

set laststatus=2

function! X264PSNR()
    if filereadable("psnr_stats_line")
        return system("./psnr_stats_line")
    else
        return ''
    endif
endfunction

set statusline=%F%m%r%h%w\ %=
set statusline+=%{fugitive#statusline()}\ 
set statusline+=%{X264PSNR()}\ 

" This shows what you are typing as a command.
set showcmd

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menu,menuone,longest

" to use libclang, must build it manually (this will give a static build)
" then it should just work
let g:clang_use_library=1

" open quickfix on error
let g:clang_complete_copen = 0
let g:clang_periodic_quickfix = 0
" select suggestion and insert into code
let g:clang_auto_select=2

map <Leader>m :make<CR>

" HOHO :V
map <Left> :echo "NOOOOOO!"<cr>
map <Right> :echo "NOOOOOO!"<cr>
map <Up> :echo "NOOOOOO!"<cr>
map <Down> :echo "NOOOOOO!"<cr>
