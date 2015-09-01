"{{{

"FZF Fuzzy File Searcher

"#TODO Extend For CtrP With Word
function! FZFExecute()
    " Remove trailing new line to make it work with tmux splits
    let directory = substitute(system('git rev-parse --show-toplevel'), '\n$', '', '')
    if !v:shell_error
        call fzf#run({'sink': 'e', 'dir': directory})
    else
        FZF
    endif
endfunction
command! FZFExecute call FZFExecute()
"CtrlP Ends

"Grepping Using FZF #TODO File With :File: Name
function! s:escape(path)
    return substitute(a:path, ' ', '\\ ', 'g')
endfunction

"Locate
function! Locate(pattern)
    let pattern = expand(a:pattern)
    let command = 'locate "'.pattern.'"'
    call fzf#run({ 'source': command, 'sink': 'e', 'options': '--extended-exact --select-1 --exit-0' })
endfunction
command! -nargs=+ Locate call Locate('<args>')

"}}}

"{{{

"#TODO Hacky Can Be Improved
function! VersionControlOpen()
    "#TODO Remove Hardcoding
    let directory = substitute(system('git rev-parse --show-toplevel'), '\n$', '', '')
    if !v:shell_error
        :Silent tig
    else
        echo expand("%:p:h") "is not a git repository"
    endif
endfunction
command! VersionControlOpen call VersionControlOpen()

function! FileExplorer()
    "#TODO Fix GUI
    :Silent urxvt -e vifm -c only
endfunction
command! FileExplorer call FileExplorer()


"#TODO Extend For Other Languages OR Customize For Python Buffer
function! IPythonExecute()
    :let ipython_file = expand("%:p")
    :Silent ipython -i %
endfunction
"Use & to run in background
command! -nargs=1 Silent
            \ | execute ':silent !'.<q-args>
            \ | execute ':redraw!'

"}}}
