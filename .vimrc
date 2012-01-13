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
    
" set cursorline

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

"let g:clang_use_library=1
"let g:clang_library_path="/opt/local/libexec/llvm-3.1/lib/"
" open quickfix on error
let g:clang_complete_copen = 1
let g:clang_user_options='|| exit 0'

"set tags+=~/.vim/tags/cpp 
"set tags+=~/.vim/tags/libavcodec
"set tags+=~/.vim/tags/libavdevice
"set tags+=~/.vim/tags/libavfilter
"set tags+=~/.vim/tags/libavformat
"set tags+=~/.vim/tags/libavutil
"
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"set tags+=./tags;
"
"let g:easytags_dynamic_files = 1
"
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview
"
"" Setup the tab key to do autocompletion
"function! CompleteTab()
"  let prec = strpart( getline('.'), 0, col('.')-1 )
"  if prec =~ '^\s*$' || prec =~ '\s$'
"    return "\<tab>"
"  else
"    return "\<c-x>\<c-o>"
"  endif
"endfunction
" 
"inoremap <tab> <c-r>=CompleteTab()<cr>

call pathogen#infect()

