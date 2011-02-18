call pathogen#runtime_append_all_bundles()
filetype off
filetype plugin indent on

set encoding=utf-8

syntax on
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set et

set number

set ignorecase
set smartcase

set incsearch

inoremap jj <ESC>
inoremap kk <ESC>

set mouse=a

colorscheme molokai

" jump to last known position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
