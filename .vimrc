set encoding=utf-8
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'lifepillar/vim-gruvbox8'
" ctrlp allows for file search anywhere using CTRL+P
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pixelneo/vim-python-docstring'
Plugin 'vim-python/python-syntax'
Plugin 'cespare/vim-toml'
" Plugin 'davidhalter/jedi-vim'
"Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" turn on syntax highlighting in vi
syntax on


" Enable 256 colour support
set t_Co=256


" set GUI-like colours
set termguicolors

" Turn line numbers on
set number


" Allow OS clipboard to work in vim and viceversa
set clipboard^=unnamed,unnamedplus


" Split config
" specify different areas of the screen where the splits should occur
set splitbelow
set splitright
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99
" Fold with spacebar
nnoremap <space> za


" Configure file Indentation by extension
au BufNewFile,BufRead *
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.py
    \ set textwidth=79 |

au BufNewFile,BufRead *.c
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |


" set powerline python command
let g:powerline_pycmd="py3"


" python-syntax
" =============
let python_highlight_all=1


" Gruvbox color scheme
" ====================
set background=dark
let g:gruvbox_filetype_hi_groups=1
colorscheme gruvbox8_hard


" SimpylFold
" ==========
" allow review of docstrings in folded python blocks
let g:SimpylFold_docstring_preview=1


" NerdTree
" ========
" map nerdtree window toggling to CTRL+ALT+n
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" close vim if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Vim airline
" ===========
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'


" vim-python-docstring
" ====================
let g:python_style="numpy"

