"Settings"

filetype plugin on
filetype indent on
"Use System Clipboard
set encoding=utf-8
set syntax=on
set t_Co=256
set ruler
set hidden
set smartcase
set incsearch
set ignorecase
set autochdir
set expandtab
set noswapfile
set nonumber
set nowrap
set autoread
set mouse=a
set autoindent
set backupdir=~/.backup.d//
set tags=./tags,tags;/
set path=.,**
set wildmenu
set wildmode=list:longest
set wildcharm=<C-Z>
set wildignorecase
set textwidth=79
set spelllang=en_us
set spellsuggest=best,5
set title
set lazyredraw
set ssop=buffers
set completeopt-=preview
"Italics
set t_ZH=[3m
set t_ZR=[23m
set foldmethod=indent
set foldnestmax=2
set nofoldenable
set foldlevel=2
set clipboard=unnamedplus,unnamed,exclude:cons\|linux

"Autocommands"

"Remembers last edited position
au BufReadPost * if line("'\"")>0|if line("'\"")<=line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
au BufEnter * silent! lcd %:p:h
