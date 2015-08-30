nnoremap j gj
nnoremap <Down> gj
nnoremap k gk
nnoremap <Up> gk
nnoremap ; :
nnoremap n nzz
vnoremap ; :
nnoremap <BACKSPACE> :%s/\s\+$//gc<CR>
nnoremap <BACKSPACE><BACKSPACE> :%s/\s\+$<CR>
"Quick Save - S is just cc
nnoremap S <ESC>s
nnoremap s :w<CR>
vnoremap S <ESC>s
vnoremap s <ESC>:w<CR>gv
"Focus on current buffer
nnoremap <C-W>O :tab split<CR>
"Easier Visual Indentation
vnoremap < <gv
vnoremap > >gv
"Faster Y,Q
map Y y$
map Q @@
"Search Visual Blocks
vnoremap * y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>
cmap w!! %!sudo tee > /dev/null %
nnoremap ,q :q<CR>
nnoremap ,d :bw!<CR>
nnoremap ,t :tab ball<CR>
nnoremap ,n :tabedit %<CR>
nnoremap ,p :!python %<CR>
nnoremap ,f :let @+=expand("%:p")<CR>
nnoremap <silent> [b :bp<CR>
nnoremap <silent> ]b :bn<CR>
"Drag Current Line/s Vertically - Meta won't work in Terminal
noremap <A-j> :m+<CR>
noremap <A-k> :m-2<CR>
inoremap <A-j> <Esc>:m+<CR>
inoremap <A-k> <Esc>:m-2<CR>
vnoremap <A-j> :m'>+<CR>gv
"Repeat the last action on a visual block
vnoremap . :normal .<CR>

"Leader Keys

"Juggling with lines
nnoremap <Leader><Up>   :move-2<CR>==
nnoremap <Leader><Down> :move+<CR>==
xnoremap <Leader><Up>   :move-2<CR>gv=gv
xnoremap <Leader><Down> :move'>+<CR>gv=gv
"Juggling with words
nnoremap <Leader><Left> "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <Leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
"Fast Rearch/Replace
nnoremap <Leader>r :'{,'}s/\<<C-R>=expand('<cword>')<CR>\>/
nnoremap <Leader>R :%s/\<<C-R>=expand('<cword>')<CR>\>/
map <Leader>a ggVG

noremap <Leader>b :CtrlPBuffer<CR>
noremap <Leader>m :CtrlPMRUFiles<CR>
noremap <Leader>t :CtrlPTag<CR>
nnoremap <Leader>F yiw:FZF -1 -q <C-R>"<CR>
nnoremap <Leader>f :<C-U>FZFExecute<CR>
nnoremap <Leader>g :<C-U>Grep<Space>
nnoremap <Leader>l :<C-U>Locate<Space>
nnoremap <Leader>v :<C-U>VersionControlOpen<CR>
nnoremap <Leader>e :<C-U>FileExplorer<CR>
nmap <Leader>t o<ESC>k
nmap <Leader>T O<ESC>j

"Function Keys

inoremap <F2> <C-O>:w<CR>
map <F2> :ls<CR>:e #
map <F5> :setlocal spell! spelllang=en_us<CR>
nnoremap <F6> :UndotreeToggle<CR>
map <silent> <F9> :Startify<CR>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
          \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
          \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"Ctrl Keys

"Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Hacks

"Python
nmap <leader>p :call IPythonExecute()<CR>
