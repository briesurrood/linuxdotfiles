"Pathogen Plugin Manager

execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on
set shiftwidth=4

"Python-Mode

let g:pymode_rope_lookup_project = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_rope_completion = 0
let g:pymode_run = 0
let g:pymode_rope = 1
let g:pymode_lint = 1
let g:pymode_lint_checker = "pylint"
let g:pymode_lint_ignore = "E501,W404"
let g:pymode_folding = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_lint_on_write = 0
let g:pymode_syntax_docstrings = 1
let g:pymode_options_colorcolumn = 0

"Fzf

let g:fzf_tmux_width = '50%'
set rtp+=~/.fzf

"CtrlP

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules' " Linux
let g:ctrlp_line_prefix = ''
if executable('ag') " Uses https://github.com/ggreer/the_silver_searcher
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
endif
