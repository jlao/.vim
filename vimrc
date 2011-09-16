call pathogen#runtime_append_all_bundles()
filetype off
filetype plugin indent on

set viminfo='10,\"100,:20,%,n~/.viminfo

set encoding=utf-8

syntax on
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set et

" turn off expand tab for make files
autocmd FileType make setlocal noexpandtab

set number

set ignorecase
set smartcase

set incsearch

inoremap jj <ESC>
inoremap kk <ESC>

colorscheme molokai

" toggle paste mode
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" jump to last known position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
