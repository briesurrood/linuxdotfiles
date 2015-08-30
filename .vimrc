"===========================READ=============================
"
"
"Reading: https://github.com/dahu/LearnVim
"
"
"Requires External Programs : fzf,git-cola,vifm,ipython
"
"
"Requires External Plugins : https://github.com/ctrlpvim/ctrlp.vim
"                            https://github.com/tpope/vim-surround
"                            https://github.com/mhinz/vim-startify
"                            https://github.com/mbbill/undotree
"                            https://github.com/xolox/vim-misc
"                            https://github.com/Lokaltog/vim-easymotion
"                            https://github.com/tmhedberg/matchit
"                            https://github.com/dahu/vimple
"                            https://github.com/junegunn/fzf
"
"==========================Shortcut Menu=====================




"s                                          -  Save
"*,#                                        -  Extended for visual block search
"[b,]b                                      -  Buffer Prev and Next

"Fn Keys =>

"F1                                         -  Help
"F2                                         -  Toolbar Menu
"F3                                         -  Paste
"F4                                         -  Ignore Case
"F5                                         -  Spellchecker
"F6                                         -  UndoTree
"F8                                         -  Tagbar
"F9                                         -  Startify
"F10                                        -  Highlight Group
"F12                                        -  Buffer

"Ctrl Keys =>

"<C-6>                                      -  Previous Buffer
"<C-P>                                      -  Recursive File Search

",<key>

",q                                         -  Quit
",t                                         -  Tab all files in buffer
",n                                         -  New tab
",p                                         -  Run the current file in python

"HTML

"C-x C-o  - Omni Completion for HTML

"Plugins

"Surround Plugin

"cs{text-object} ys{text-object} or yss<span

"Easymotion - \\w \\b



"==========================Hacksheet=====================


"Ctrl-]                      : For navigation in help and Ctrl-T to go back (Works for ctags in general)
"<C-]>                       : Jump to {keyword} under  cursor in help file [C]
"<C-[>, <C-T>                : Move back & Forth in HELP History
":g/^$/d                     : Deletes all the empty lines :help pattern
":new                        : Read !gcc
"command | vim -             : Works from bash
":%s/\s\+$//                 : Remove white spaces
"C-x C-o                     : Omni Completion for HTML
"vat/dat/yat                 : For working with tag elements
"<C-U>                       : Delete all entered
"<C-W>                       : Delete last word
"<HOME><END>                 : Beginning/end of line
"<C-LEFTARROW><C-RIGHTARROW> : Jump one word backwards/forwards
"<C-X><C-E>,<C-X><C-Y>       : Scroll while staying put in insert
"<C-X><C-F>                  : Insert name of a file in current directory
"[I                          : Show lines matching word under cursor <cword> (super)
"<C-R><C-W>                  : Pull word under the cursor into a command line or search
"<C-R><C-A>                  : Pull WORD under the cursor into a command line or search
"<C-R>-                      : Pull small register (also insert mode)
"<C-R>[0-9a-z]               : Pull named registers (also insert mode)
"<C-R>%                      : Pull file name (also #) (also insert mode)
"<C-R>=somevar               : Pull contents of a variable (eg :let sray="ray[0-9]")
""ayy@a                      : Execute "Vim command" in a text file
"yy@"                        : Same thing using unnamed register
"u@.                         : Execute command JUST typed in
"ddw                         : Store what you delete in register d [N]
"ccaw                        : Store what you change in register c [N]
"zm                          : Fold one level , M for all levels , r R for opposite
":h :ilist                   : For languages like JS , Scheme etc where you have nested functions


"==========================Explore=====================


"<C-R>=system('python', @0)  : Yank line , then in insert mode do this


source ~/.vim/config/settings.vim
source ~/.vim/config/functions.vim
source ~/.vim/config/plugins.vim
source ~/.vim/config/keyboard.vim
color ron
source ~/.vim/config/hacks.vim
color generic