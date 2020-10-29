" made with https://tdaly.co.uk/projects/vim-statusline-generator/
function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch = "  ".substitute(l:gitrevparse, '\n', '', 'g')." "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

set statusline=
set statusline+=%#IncSearch#  "change the highlight group for the buffer number
set statusline+=\ %n  " display the buffer number 
set statusline+=\ %#PmenuSel#
set statusline+=%{b:gitbranch}  " display the git branch if buffer is in a repo
set statusline+=%#CursorColumn#
set statusline+=\ %f
set statusline+=%{&modified?'[+]\ ':''}  " buffer mod indicator
set statusline+=%{&readonly?'\ ':''}  " read only indicator
set statusline+=\ %h
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

