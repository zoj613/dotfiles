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
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pixelneo/vim-python-docstring'
Plugin 'vim-python/python-syntax'
Plugin 'cespare/vim-toml'
Plugin 'szw/vim-tags'
" Plugin 'davidhalter/jedi-vim'
"Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" map leader to space
map <Space> <Leader>


" highlight all matches for a pattern search
set hlsearch
" highlight as I type
set incsearch
" map <Leader>h to command thats turns off highlighting
nmap <Leader>h :nohl<CR>


" buffer navigation mappings
nnoremap <Leader>b :bn<CR>
nnoremap <Leader>bb :bp<CR>


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


" FZF.vim
" =======
" map :FZF to CTRL+P
nmap <C-p> :FZF<CR>


" ALE
" ===
" map CTRL+K and CTRL+J to jump between syntax errors/warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_completion_enabled = 1


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

