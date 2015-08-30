"Settings"

filetype plugin on
filetype indent on
set syntax=on
set ruler
set hidden
set clipboard=unnamedplus,unnamed,exclude:cons\|linux "Uses System Clipboard
set smartcase
set incsearch
set ignorecase
set autochdir
set expandtab
set noswapfile
set nonumber
set nowrap
set autoread
set t_Co=256
set mouse=a
set autoindent
set backupdir=~/.backup.d//
set tags=./tags,tags;/
set path=.,**
set wildmenu "Tab Completion
set wildmode=list:longest
set wildcharm=<C-Z>
set wildignorecase
set textwidth=79
set spelllang=en_us
set spellsuggest=best,5
set title
set lazyredraw
set ssop=buffers "Do not store global and local values in a session
set completeopt-=preview
"Italics
set t_ZH=[3m
set t_ZR=[23m

"Autocommands"

au BufRead,BufNewFile *.markdown set filetype=markdown
au VimResized * exe "normal! \<c-w>="
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif "Remembers last time edited position!
au BufEnter * silent! lcd %:p:h

"Folding

set foldmethod=indent   "fold based on indent
set foldnestmax=2       "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=2         "this is just what i use
