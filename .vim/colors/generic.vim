" Vim Color File
"
" Beauty lies in the eyes of the beholder - Plato 400 BC Approx :-)
"
" Author: Nishant Varma <nishant.varma@gmail.com>
"
" Note: Enhancing the default color schemes with brighter terminal colors for
"       readability. Apply the default colorscheme and then apply generic.vim
"       on top using :colorscheme generic
"
"---------------------------------------------------------------------------------
"Terminal Colors "#000000:#cc0000:#4e9a06:#c4a000:#3465a4:#75507b:#06989a:#d3d7cf:
"                 #555753:#ef2929:#8ae234:#fce94f:#729fcf:#ad7fa8:#34e2e2:#eeeeec"
"---------------------------------------------------------------------------------

hi Normal ctermfg=none  ctermbg=none cterm=none
hi NonText ctermfg=232 ctermbg=none cterm=none
hi ColorColumn ctermfg=none ctermbg=none cterm=none
hi CursorLine ctermfg=none ctermbg=234 cterm=none
hi LineNr  ctermfg=none ctermbg=none cterm=none
hi SignColumn ctermfg=none ctermbg=none cterm=none
hi StatusLine ctermfg=none ctermbg=234 cterm=none
hi StatusLineNC ctermfg=238 ctermbg=234 cterm=none
hi Error ctermfg=none ctermbg=none cterm=none
hi ErrorMsg ctermfg=231 ctermbg=none cterm=none
hi VertSplit ctermfg=234 ctermbg=234 cterm=none
hi Visual ctermfg=black ctermbg=white cterm=none
hi Search ctermbg=17 ctermfg=15 cterm=none
hi FoldColumn ctermbg=none
hi SpellBad ctermbg=52 ctermfg=15 cterm=none
hi Pmenu ctermbg=234 ctermfg=none
hi PmenuSel ctermbg=234 ctermfg=none cterm=standout
hi PmenuSbar ctermbg=234 ctermfg=none
hi DiffAdd ctermbg=22 ctermfg=193
hi DiffDelete ctermbg=52 ctermfg=16 cterm=none
hi DiffChange ctermbg=24 ctermfg=none cterm=none
hi DiffText ctermbg=16 ctermfg=81 cterm=reverse
hi ModeMsg cterm=none
hi MatchParen cterm=none ctermbg=190 ctermfg=16

"Syntax
hi Comment ctermfg=238 ctermbg=none cterm=none
hi Identifier cterm=none
hi Title cterm=none
hi Statement cterm=none
hi Type cterm=none
hi String cterm=none
hi Constant cterm=none
hi Special ctermfg=none

"Links
hi! link Structure Type
hi! link DiffAdd String
hi! link DiffChanged Normal
hi! link DiffCommon Constant
hi! link DiffRemoved Constant
hi! link DiffComment Constant
hi! link DiffDiffer Constant

if !exists("g:color_brighten")
    let g:color_brighten = 1
endif

if g:color_brighten == 1
    if g:colors_name =='default'
        hi Type ctermfg=34
        hi PreProc ctermfg=13
        hi Special ctermfg=13
        hi Title ctermfg=13
        hi Statement ctermfg=172
        hi Identifier ctermfg=110
        hi SpecialKey ctermfg=161
        hi Constant ctermfg=9
        hi String ctermfg=9
        hi Underlined ctermfg=13
        hi! link htmlTagName Statement
        hi! link htmlArg Type
        hi! link htmlString String
    elseif g:colors_name =='delek'
        hi Operator ctermfg=9
        hi Statement ctermfg=214
        hi Type ctermfg=111
        hi Constant ctermfg=40
        hi Identifier ctermfg=37
        hi PreProc ctermfg=176
        hi Special ctermfg=161
    elseif g:colors_name =='desert'
        hi Type ctermfg=40
        hi Constant ctermfg=214
        hi Statement ctermfg=214
        hi Identifier ctermfg=45
        hi PreProc ctermfg=13
        hi Special ctermfg=13
        hi Title ctermfg=13
    elseif g:colors_name =='elflord'
        hi PreProc ctermfg=13
    elseif g:colors_name =='koehler'
        hi Directory ctermfg=214
    elseif g:colors_name =='murphy'
        hi Special ctermfg=161
        hi Function ctermfg=33
    elseif g:colors_name =='pablo'
        hi Type ctermfg=40
        hi Statement ctermfg=220
        hi PreProc ctermfg=13
    elseif g:colors_name == 'ron'
        hi Todo ctermbg=none ctermfg=none cterm=bold
        hi PreProc ctermfg=14
        hi String ctermfg=13
    elseif g:colors_name =='slate'
        hi Type ctermfg=112
        hi Include ctermfg=9
        hi PreProc ctermfg=9
        hi Operator ctermfg=9
        hi Identifier ctermfg=9
        hi Constant ctermfg=202
        hi Function ctermfg=202
        hi Title ctermfg=111
        hi Special ctermfg=208
        hi String ctermfg=13
        hi Directory ctermfg=39
    elseif g:colors_name =='torte'
        hi Special ctermfg=214
    elseif g:colors_name =='zellner'
        hi Statement ctermfg=9
    endif
endif
"Python
hi! link pythonDocString Comment

"CtrlP
hi! link CtrlPMatch Normal
hi! link CtrlPMode1 StatusLine
hi! link CtrlPMode2 StatusLine

"Startify
hi! link StartifyFile Directory
hi! link StartifySlash Normal
hi! link StartifyBracket Normal
hi! link StartifySection Title
