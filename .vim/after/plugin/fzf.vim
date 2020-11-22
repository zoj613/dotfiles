if !exists('g:loaded_fzf')
    finish
endif

nnoremap <Leader>b :Buffers<CR>
nnoremap <C-p> :FZF<CR>
" view command histoty using FZF
nnoremap <leader>h :History:<CR>
" view buffer history using FZF
nnoremap <leader>H :History<CR>
let g:fzf_layout = {'down': '20%'}
let g:fzf_colors = {
\   'fg':      ['fg', 'Normal'],
\   'bg':      ['bg', 'Normal'],
\   'hl':      ['fg', 'Comment'],
\   'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\   'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\   'hl+':     ['fg', 'Statement'],
\   'info':    ['fg', 'PreProc'],
\   'border':  ['fg', 'Ignore'],
\   'prompt':  ['fg', 'Conditional'],
\   'pointer': ['fg', 'Exception'],
\   'marker':  ['fg', 'Keyword'],
\   'spinner': ['fg', 'Label'],
\   'header':  ['fg', 'Comment']
\}
