set encoding=utf-8
set fileformat=unix
" general spacing and indentation rules for files
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
" map leader to space
let mapleader = "\<Space>"
" highlight all matches for a pattern search
set hlsearch
" highlight as I type
set incsearch
" enable switching from an unsaved buffer
set hidden
" turn on statusline for all windows
set laststatus=2 
" turn on syntax highlighting in vi
syntax on
" Enable 256 colour support
" set t_Co=256
" set GUI-like colours
if has('termguicolors')
  set termguicolors
endif
" Turn line numbers on
set number
set relativenumber
" Allow OS clipboard to work in vim and viceversa
set clipboard^=unnamed,unnamedplus
" Split config
" specify different areas of the screen where the splits should occur
set splitbelow
set splitright
" Enable folding
set foldmethod=indent
set foldlevel=99
" set verical ruler
set colorcolumn=79
" prevent the `Omni Completion` message from popping up during autocomplete"
set shortmess+=c
" define autocomplete menu format
set completeopt=popup,menu,menuone,noselect,noinsert

set background=dark
" turn on filetype plugins
filetype plugin indent on

