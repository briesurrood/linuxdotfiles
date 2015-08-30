" Vim Color File
" Maintainer:   Nishant Varma <nishant.varma@gmail.com>
" Last Change:  19 July 2014

" Cool Help Screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

if version > 580
    " No guarantees for version 5.8 and below, but this makes it stop
    " Complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="bw"

hi SpecialKey     cterm=bold         ctermfg=NONE
hi NonText        cterm=bold         ctermfg=NONE
hi Directory      cterm=bold         ctermfg=NONE
hi ErrorMsg       cterm=standout     ctermfg=NONE
hi IncSearch      cterm=reverse      ctermfg=NONE
hi Search         cterm=reverse      ctermfg=NONE
hi MoreMsg        cterm=bold         ctermfg=NONE
hi ModeMsg        cterm=bold         ctermfg=NONE
hi LineNr         cterm=NONE         ctermfg=NONE
hi SignColumn     cterm=NONE         ctermfg=NONE  ctermbg=NONE
hi Question       cterm=standout     ctermfg=NONE
hi StatusLine     cterm=bold,reverse ctermfg=NONE
hi StatusLineNC   cterm=reverse      ctermfg=NONE
hi VertSplit      cterm=reverse      ctermfg=NONE
hi Title          cterm=bold         ctermfg=NONE
hi Visual         cterm=reverse      ctermfg=236   ctermbg=15
hi SpellBad       cterm=reverse      ctermfg=236   ctermbg=15
hi Error          cterm=bold         ctermbg=233   ctermfg=15
hi VisualNOS      cterm=bold         ctermfg=NONE
hi WarningMsg     cterm=standout     ctermfg=NONE
hi WildMenu       cterm=standout     ctermfg=NONE
hi Folded         cterm=standout     ctermfg=NONE
hi FoldColumn     cterm=standout     ctermfg=NONE
hi DiffAdd        cterm=bold         ctermfg=NONE
hi DiffChange     cterm=bold         ctermfg=NONE
hi DiffDelete     cterm=bold         ctermfg=NONE
hi DiffText       cterm=reverse      ctermfg=NONE
hi Comment        cterm=bold         ctermfg=NONE
hi Constant       cterm=NONE         ctermfg=NONE
hi Special        cterm=bold         ctermfg=NONE
hi Identifier     cterm=NONE         ctermfg=NONE
hi Statement      cterm=bold         ctermfg=NONE
hi PreProc        cterm=NONE         ctermfg=NONE
hi Type           cterm=NONE         ctermfg=NONE
hi Underlined     cterm=NONE         ctermfg=NONE
hi Ignore         cterm=bold         ctermfg=NONE
hi Todo           cterm=none         ctermfg=235   ctermbg=15
hi MatchParen     cterm=reverse      ctermfg=239   ctermbg=15
hi ColorColumn    cterm=NONE         ctermfg=NONE  ctermbg=NONE
hi WildMenu       cterm=NONE         ctermfg=15    ctermbg=234
hi Pmenu          cterm=NONE         ctermbg=235   ctermfg=15
hi PmenuSel       cterm=reverse      ctermbg=235   ctermfg=15
hi DiffRemoved    ctermfg=102        ctermbg=238
hi DiffDelete     ctermfg=102        ctermbg=238
hi DiffAdded      ctermfg=15         ctermbg=235
hi netrwMarkFile  cterm=reverse
