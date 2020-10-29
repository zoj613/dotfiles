" load settings file before everything else
runtime! settings.vim

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

if executable('fzf')
    " add path to system fzf before installing vim plugin
    Plug '/usr/bin/'
    " install from last sensible commit because latest version requires FZF to be
    " version > 0.22.0 and my current system version is still at v0.22
    Plug 'junegunn/fzf.vim', { 'commit': '4145f53f3d343c389ff974b1f1a68eeb39fba18b'}
else
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
endif

Plug 'tpope/vim-fugitive'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tmhedberg/SimpylFold'
Plug 'dense-analysis/ale'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'francoiscabrol/ranger.vim'

call plug#end()

" map <Leader>h to command thats turns off highlighting
nnoremap <Leader>n :nohl<CR>
" exit insert mode using ii
inoremap jj <C-c>
" buffer navigation mappings
nnoremap <Leader>b :buffers<CR>
nnoremap <Leader>h :history<CR>
nnoremap <Leader>j :bprevious<CR>
nnoremap <Leader>k :bnext<CR>
nnoremap <Leader>c :bd<CR>
" disable use of arrow keys in all modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" use tab to step through completion choices instead when pop-menu is shown.
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" use shift-tab to step backwards through completion choices
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use enter to to close the completion pop-up when not wanted
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
" map to generate python docstrings
nmap <silent> <Leader>pd <Plug>(pydocstring)


" Gruvbox color scheme
" ====================
let g:gruvbox_filetype_hi_groups=1
colorscheme gruvbox8
