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
Plugin 'justmao945/vim-clang'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pixelneo/vim-python-docstring'
Plugin 'vim-python/python-syntax'
Plugin 'cespare/vim-toml'
Plugin 'szw/vim-tags'
Plugin 'francoiscabrol/ranger.vim'
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
nmap <Leader>n :nohl<CR>


" exit insert mode using ii
inoremap jj <C-c>


" buffer navigation mappings
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>j :bprevious<CR>
nnoremap <Leader>k :bnext<CR>
nnoremap <Leader>c :bd<CR>

" turn on syntax highlighting in vi
syntax on


" Enable 256 colour support
" set t_Co=256


" set GUI-like colours
set termguicolors

" Turn line numbers on
set number
set relativenumber


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
    \ set textwidth=79 |
    \ set fileformat=unix


" disable use of arrow keys in all modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>


" Ranger.vim
" ==========
" mapping for opening a new file in the cwd
map <Leader>d :RangerWorkingDirectory<CR>


" Jedi-vim
" ========
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "2"
let g:jedi#usages_command = "<leader>u"


" FZF.vim
" =======
" map :FZF to CTRL+P
nmap <C-p> :FZF<CR>
" view command history using FZF
nmap <Leader>H :History:<CR>
" view buffer histoty using FZF
nmap <leader>h :History<CR>
let g:fzf_preview_window = ''


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
colorscheme gruvbox8


" SimpylFold
" ==========
" allow review of docstrings in folded python blocks
let g:SimpylFold_docstring_preview=1


" Vim airline
" ===========
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1


" vim-python-docstring
" ====================
let g:python_style="numpy"



