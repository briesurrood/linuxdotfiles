autocmd FileType python setlocal nonumber
autocmd FileType python hi pythonSpaceError cterm=underline ctermbg=none ctermfg=none
autocmd FileType python hi WhitespaceEOL cterm=underline ctermbg=none ctermfg=none
set background=dark
if has("gui_running")
    set background=light
    colorscheme hemisu
    highlight NonText guibg=white guifg=white
endif
