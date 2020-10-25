set encoding=utf-8
set nocompatible              " required

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()


" add path to system fzf before installing vim plugin
Plug '/usr/bin/'
" install from last sensible commit because latest version requires FZF to be
" version > 0.22.0 and my current system version is still at v0.22
Plug 'junegunn/fzf.vim', { 'commit': '4145f53f3d343c389ff974b1f1a68eeb39fba18b'}

Plug 'tpope/vim-fugitive'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tmhedberg/SimpylFold'
Plug 'dense-analysis/ale'
Plug 'rbong/vim-crystalline'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'francoiscabrol/ranger.vim'
call plug#end()


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


" set verical ruler
set colorcolumn=79


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


" ALE
" ===
" map CTRL+K and CTRL+J to jump between syntax errors/warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 25
let g:ale_completion_autoimport = 1
let g:ale_default_navigation = 'buffer'
let g:ale_completion_autoimport = 1
" Use ALE's function for omnicompletion.
set omnifunc=ale#completion#OmniFunc
set completeopt=popup,longest,menu,menuone
let g:ale_completion_symbols = {
\    'method': '',
\    'function': '',
\    'constructor': '',
\    'class': '',
\    'enum': '',
\    'reference': 'ref',
\    'enum member': '',
\    'constant': '',
\    'struct': '',
\    'type_parameter': 'type param',
\    '<default>': 'v'
\}
noremap ;d :ALEGoToDefinition<CR>
noremap ;td :ALEGoToTypeDefinition<CR>
noremap ;r :ALEFindReferences<CR>
noremap ;h :ALEHover<CR>
noremap ;i :ALEInfo<CR>
noremap ;f :ALEFix <CR>
let g:ale_hover_to_preview = 0
noremap ;s :ALESymbolSearch<CR>
let g:ale_c_cc_options = '-std=c99 -Wall -Wextra -pedantic'
let g:ale_c_clangd_options = "--all-scopes-completion --header-insertion=iwyu 
\   --suggest-missing-includes --completion-style=detailed"
let g:ale_python_pyls_executable = '/usr/bin/pyls'
let g:ale_sh_language_server_executable = '/usr/bin/bash-language-server'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
\   'python': ['pyls', 'flake8', 'mypy'],
\   'sh': ['language_server'],
\   'c': ['cc', 'clangd', 'clangtidy'],
\   'vim': ['ale_custom_linting_rules', 'vimls']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'sh': ['shfmt'],
\   'python': [
\       'add_blank_lines_for_python_control_statements',
\       'black',
\       'reorder-python-imports'
\   ],
\   'c': ['clang-format', 'clangtidy']
\}
" use tab to step through completion choices instead of C-n
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" use shift-tab to step backwards through completion choices
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use enter to to close the completion pop-up when not wanted
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"


" FZF.vim
" =======
" map :FZF to CTRL+P
nmap <C-p> :FZF<CR>
" view command histoty using FZF
nmap <leader>h :History:<CR>
" view buffer history using FZF
nmap <leader>H :History<CR>


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
let g:SimpylFold_docstring_preview=1


" vim-crystalline
" ===============
function! StatusLine(...)
  return crystalline#mode() . '%#Crystalline# %f%h%w%m%r %#CrystallineFill#'
        \ . '%=%#Crystalline# %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
endfunction
let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_theme = 'gruvbox'
set laststatus=2
set tabline=%!crystalline#bufferline()
set showtabline=2


" pydocstring
" ===========
let g:pydocstring_formatter = 'numpy'
nmap <silent> <Leader>pd <Plug>(pydocstring)
