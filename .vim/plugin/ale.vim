" Use ALE's function for omnicompletion.
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 25
let g:ale_completion_autoimport = 1
let g:ale_default_navigation = 'buffer'
let g:ale_completion_autoimport = 1
let g:ale_hover_to_preview = 0

" language specific options
let g:ale_c_cc_options = "-std=c99 -Wall -Wextra -pedantic -Werror -Wshadow 
\   -Wsign-compare -Wunused -Wno-unused-result -Wpointer-arith -Wcast-qual 
\   -Wmissing-prototypes -Wno-missing-braces"
let g:ale_c_clangd_options = "--all-scopes-completion --header-insertion=iwyu 
\   --suggest-missing-includes --completion-style=detailed"
let g:ale_python_pyls_executable = '/usr/bin/pyls'
let g:ale_sh_language_server_executable = '/usr/bin/bash-language-server'
let g:ale_r_languageserver_cmd = 'languageserver::run()'
let g:ale_lint_on_insert_leave = 1

" linter and fixer options
let g:ale_linters = {
\   'python': ['pyls', 'flake8', 'mypy'],
\   'sh': ['language_server'],
\   'c': ['cc', 'clangd', 'clangtidy'],
\   'vim': ['ale_custom_linting_rules', 'vimls'],
\   'r': ['languageserver', 'lintr']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'sh': ['shfmt'],
\   'python': [
\       'add_blank_lines_for_python_control_statements',
\       'black',
\       'reorder-python-imports'
\   ],
\   'c': ['clang-format', 'clangtidy'],
\   'r': ['styler']
\}
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


" mappings
noremap ;d :ALEGoToDefinition<CR>
noremap ;td :ALEGoToTypeDefinition<CR>
noremap ;r :ALEFindReferences<CR>
noremap ;h :ALEHover<CR>
noremap ;i :ALEInfo<CR>
noremap ;f :ALEFix <CR>
noremap ;s :ALESymbolSearch<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" custom functions and autocommands
augroup SignatureAfterComplete
    autocmd!
    " display argument list of the selected completion candidate using ALEHover
    autocmd User ALECompletePost ALEHover
augroup END
