filetype plugin on
filetype indent on
syntax on

set path=.,/usr/local/include,/usr/include,/usr/local/include/c++/4.6.0/

let mapleader = ","

set t_Co=256
"colorscheme molokai
set background=light

" Default formatting
set tabstop=2
set shiftwidth=2
"set nowrap
"set textwidth=79
set number

" Don't do weird stuff with backspace key
set backspace=indent,eol,start

" Break long lines
" set fo+=a

" Insert appropriate number of spaces for a tab
set expandtab
set smarttab

" C-aware indentation
set cindent
" Don't indent public keyword in classes
"set cinoptions=h0
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
set undofile

" Unix like auto-completion
set wildmenu
set wildmode=list:longest
set wildignore+=*.o
set wildignore+=*.obj
set wildignore+=*.class
set wildignore+=.git
set wildignore+=node_modules
set wildignore+=bower_components
set wildignore+=intermediates
set wildignore+=target
set wildignore+=bazel-bazel
set wildignore+=bazel-bin
set wildignore+=bazel-genfiles
set wildignore+=bazel-out
set wildignore+=bazel-testlogs

" Ignore case sensitivity when searching
set ignorecase

" ...but only if lower case letters are used.
set smartcase

set laststatus=2

" This shows what you are typing as a command.
set showcmd

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menu,menuone,longest

highlight OverLength ctermbg=7
match OverLength /\%81v.\+/

map <Leader>m :make<CR>
map <Leader>k :Dispatch node node_modules/karma/bin/karma start test/karma.conf.js<CR>

" HOHO :V
map <Left> :echo "NOOOOOO!"<cr>
map <Right> :echo "NOOOOOO!"<cr>
map <Up> <C-Y>
map <Down> <C-E>

" crontab -e breaks without this
autocmd filetype crontab setlocal nobackup nowritebackup

