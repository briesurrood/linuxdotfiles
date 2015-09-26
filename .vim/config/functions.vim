function! s:escape(path)
    return substitute(a:path, ' ', '\\ ', 'g')
endfunction

"#TODO Extend For CtrP With Word
function! FZFExecute()
    let directory = substitute(system('git rev-parse --show-toplevel'), '\n$', '', '')
    if !v:shell_error
        call fzf#run({'source': 'git ls-files', 'sink': 'e', 'dir': directory})
    else
        FZF
    endif
endfunction
command! FZFExecute call FZFExecute()

"#TODO Support Other Version Controls
function! VersionControlOpen()
    let directory = substitute(system('git rev-parse --show-toplevel'), '\n$', '', '')
    if !v:shell_error
        :Silent tig
    else
        echo expand("%:p:h") "is not a git repository"
    endif
endfunction
command! VersionControlOpen call VersionControlOpen()

function! FileExplorer()
    :Silent vifm
endfunction
command! FileExplorer call FileExplorer()

function! IPythonExecute()
    :let ipython_file = expand("%:p")
    :Silent ipython -i %
endfunction

function! Start()
    " Don't run if: we have commandline arguments, we don't have an empty
    " buffer, if we've not invoked as vim or gvim, or if we'e start in insert mode
    if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
        return
    endif

    enew

    e ~/Scratch.txt

endfunction
autocmd VimEnter * call Start()

"Use & to run in background
command! -nargs=1 Silent
            \ | execute ':silent !'.<q-args>
            \ | execute ':redraw!'
