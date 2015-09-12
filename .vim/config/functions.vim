"Use & to run in background
command! -nargs=1 Silent
            \ | execute ':silent !'.<q-args>
            \ | execute ':redraw!'

"#TODO Extend For CtrP With Word
function! FZFExecute()
    let directory = substitute(system('git rev-parse --show-toplevel'), '\n$', '', '')
    if !v:shell_error
        call fzf#run({'sink': 'e', 'dir': directory})
    else
        FZF
    endif
endfunction
command! FZFExecute call FZFExecute()

function! s:escape(path)
    return substitute(a:path, ' ', '\\ ', 'g')
endfunction

"#TODO Grep
function! Locate(pattern)
    let pattern = expand(a:pattern)
    let command = 'locate "'.pattern.'"'
    call fzf#run({ 'source': command, 'sink': 'e', 'options': '--extended-exact --select-1 --exit-0' })
endfunction
command! -nargs=+ Locate call Locate('<args>')

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
