" Vim configuration file
" Language:		Vim 6.1 script
" Maintainer:	Eugeny Korekin <az@ftc.ru>
" License:		GNU GPL
" Version:		2002.07.23

" Start {{{
" so ~/.vim/macros/help.vim
" so ~/.vim/macros/words_tools.vim
" so ~/.vim/macros/Triggers.vim
"call ClearHelp("vimrc")
"call BuildHelp("vimrc", "			-------------------------" )
"call BuildHelp("vimrc", "			C U S T O M   M A C R O S" )
"call BuildHelp("vimrc", "			-------------------------" )
"call BuildHelp("vimrc", "" )
"call BuildHelp("vimrc", "" )
"call BuildHelp("vimrc", "" )
" }}}

" Settings {{{

" Settings for Explorer script {{{
""let g:explDetailedHelp=1
""let g:explDetailedList=1
""let g:explDateFormat="%d %b %Y %H:%M"
"let g:explVertical=1
""let g:explSplitBelow=0
"}}}


" Settings for AutoLastMod {{{
" Set this to 1 if you will automaticaly change date of modification of file.
"let g:autolastmod=1
" Modification is made on line like this variable (regular expression!):
"let g:autolastmodtext="^\\([ 	]*Last modified: \\)"
" }}}

" Priority between files for file name completion (suffixes) {{{
" Do not give .h low priority in command-line filename completion.
" set suffixes-=.h
" set suffixes+=.aux
" set suffixes+=.bbl
" set suffixes+=.blg
" set suffixes+=.log
" set wildignore+=*.dvi
" }}}
 



" for enhanced commentify {{{
" let g:EnhCommentifyUseAltKeys="yes"
"}}}



"Plugins settings {{{

" directory with sokoban levels
let g:SokobanLevelDirectory="/home/az/.vim/plugin/sokoban/"

" top level menu for DrChip plugins
let g:DrChipTopLvlMenu= "&Plugin."

" TagsList and TagsMenu settings 
let Tlist_Key = '\tl'
let Tlist_Sync_Key = '\tlh'
let Tlist_Auto_Refresh = 1
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Use_Right_Window = 1
"let Tlist_Display_Prototype = 1
let g:TagsMenu_useAutoCommand = 0
"let Tmenu_Ctags_Cmd = '/usr/bin/ctags'

" CVSmenu settings
let g:CVSautocheck = 0
"}}}

" Misc {{{

" The cursor is kept in the same column (if possible).  This applies to the
" commands: CTRL-D, CTRL-U, CTRL-B, CTRL-F, "G", "H", "M", "L", , and to the
" commands "d", "<<" and ">>" with a linewise operator, with "%" with a count
" and to buffer changing commands (CTRL-^, :bnext, :bNext, etc.).  Also for an
" Ex command that only has a line number, e.g., ":25" or ":+".
set nostartofline

" Automatically setting options in various files
set modeline

"set ai			" always set autoindenting on

"for compatibility 
"set noesckeys

"  allow tilde (~) to act as an operator -- ~w, etc.
" set tildeop

" wrap around lines
set whichwrap=b,s,<,>,[,],h,l

" search case
set ignorecase
set smartcase

" scrollofs
set scrolloff=999
"set sidescrolloff=1000

" Make window maximalized
" set winheight=100

set visualbell

set confirm

set smartindent

set listchars=tab:>-,trail:-

" switch buffers without saving
set hidden

set wildmenu

set cpoptions-=<

set wildcharm=<C-Z>

set wildmode=list:longest,full

" The screen will not be redrawn while executing macros, registers
" and other commands that have not been typed. To force an updates use |:redraw|.
set lazyredraw

set directory=~/tmp,/var/tmp,/tmp:e

set infercase

set updatetime=500

" langmap
"set langmap=£ÊÃÕËÅÎÇÛÝÚÈßÆÙ×ÁÐÒÏÌÄÖÜÑÞÓÍÉÔØÂÀ³êãõëåîçûýúèÿæù÷áðòïìäöüñþóíéôøâà;`qwertyuiop[]asdfghjkl;'zxcvbnm,.~QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" for better filename completion on  in shell scripts
set isfname-==

set incsearch
set hlsearch

" shell to start with !
set shell=zsh


" Don't add EOF at end of file
set noendofline

set showfulltag 

" threshold for reporting how many lines changed
set report=0

" Need more undolevels ??
" (default 100, 1000 for Unix, VMS, Win32 and OS/2)
set undolevels=10000

"set cmdheight=2

set bs=2 " allow backspacing over everything in insert mode

" time out on mapping after one second, time out on key codes after
" a tenth of a second
set timeout timeoutlen=1000 ttimeoutlen=100

" Set this, if you will open all windows for files specified
" on the commandline at vim startup.
"let g:open_all_win=1
let g:open_all_win=0

" Settings for folding long lines
let g:fold_long_lines=300

" free alt keys from menu bindings
" set winaltkeys=no

"set splitbelow

"windows clipboard, under X try 'unnamedplus'
if has ("win32")
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif


" }}}

" }}}

" Keyboard Mappings {{{ 

"unmap Q

" make alt-functional mappings work in console as <leader><Fx> {{{
" don't works
map <leader>OP <M-F1>
map <leader>OQ <M-F2>
map <leader>OR <M-F3>
map <leader>OS <M-F4>
map <leader>[15~ <M-F5>
map <leader>[17~ <M-F6>
map <leader>[18~ <M-F7>
map <leader>[19~ <M-F8>
map <leader>[20~ <M-F9>
map <leader>[21~ <M-F10>
map <leader>[23~ <M-F11>
map <leader>[24~ <M-F12>
imap <leader>OP <M-F1>
imap <leader>OQ <M-F2>
imap <leader>OR <M-F3>
imap <leader>OS <M-F4>
imap <leader>[15~ <M-F5>
imap <leader>[17~ <M-F6>
imap <leader>[18~ <M-F7>
imap <leader>[19~ <M-F8>
imap <leader>[20~ <M-F9>
imap <leader>[21~ <M-F10>
imap <leader>[23~ <M-F11>
imap <leader>[24~ <M-F12>

" }}}

" Functional keys {{{
"map <F2> :w<C-Mession! " . v:this_session
"map <silent> <F2> :wa<Bar>if !strlen(v:this_session)<CR>let v:this_session="~/sessions/Last"<CR>endif<CR>:exe "mksession! " . v:this_session<CR>
"imap <silent> <F2> <Esc>:wa<Bar>if !strlen(v:this_session)<CR>let v:this_session="~/sessions/Last"<CR>endif<CR>:exe "mksession! " . v:this_session<CR>a

"F1 - sync syntax
map <F1> :syntax sync fromstart<CR>
imap <F1> <C-O>:syntax sync fromstart<CR>

"F2 - save file
map <silent> <F2> :w<CR>
imap <silent> <F2> <C-O>:w<CR>

"F3 - switch to another window
map <F3> <C-W>w
imap <F3> <C-O><C-W>w

"F4 - explore dir
map <F4> :VSTreeExplore<CR>
imap <F4> <esc>:VSTreeExplore<CR>

"F5 - switch to alternate buffer
map <F5> 
imap <F5> <C-O>

"F6 - previous buffer
map <F6> :bp<CR>
imap <F6> <C-O>:bp<CR>

"F7 - next buffer
map <F7> :bn<CR>
imap <F7> <C-O>:bn<CR>

"F8 - wipeout buffer
map <F8> :bwipe<CR>
imap <F8> <C-O>:bwipe<CR>

"F9 - :make
map <F9> :w<CR>:make<CR>
imap <F9> <esc>:w<CR>:make<CR>i

"F10 - menu
map <F10> :emenu<C-Z>
imap <F10> <esc>:emenu<C-Z>

"F11 - start vim shell
map <F11> :so ~/.vim/vimsh.vim<CR>
imap <F11> <esc>:so ~/.vim/vimsh.vim<CR>

"F12 - quit vim
map <F12> :qa<CR>
imap <F12> <esc>:qa<CR>

"<C-F1> - remove search highlightning
map <C-F1> :nohlsearch<CR>
imap <C-F1> <C-O>:nohlsearch<CR>

"<C-F2> - toggle list mode
map <C-F2> :set list! list?<CR>
imap <C-F2> <C-O>:set list! list?<CR>

"<C-F3> - toggle wrapping
map <C-F3> :set wrap!  wrap?<CR>
imap <C-F3> <C-O>:set wrap! wrap?<CR>

"<C-F4> - toggle number
map <C-F4> :set number! number?<CR>
imap <C-F4> <C-O>:set number! number?<CR>

"<C-F5> - toggle paste
map <C-F5> :set paste! paste?<CR>
imap <C-F5> <C-O>:set paste! paste?<CR>

"<C-F5> - toggle paste
map <C-F5> :set paste! paste?<CR>
imap <C-F5> <C-O>:set paste! paste?<CR>

" }}}

" Control mappings {{{

""Linux-Mandrake configuration.
"Chmouel Boudjnah <chmouel@mandrakesoft.com>
"I know it's horrible for a vi master but useful for newbies.
" start of line
inoremap <C-A>		<Home>
cnoremap <C-A>		<Home>
" end of line
cnoremap <C-E>		<End>
inoremap <C-E>		<End>

" back one word
"inoremap <C-B>	<S-Left>
" forward one word
"inoremap <C-F>	<S-Right>

" Switching between windows by pressing one time CTRL-X or CTRL-Tab keys.
noremap <C-X> <C-W>w
map  <C-Tab> <C-W>w
imap <C-Tab> <C-O><C-W>w
cmap <C-Tab> <C-C><C-Tab>

" Make Insert-mode completion more convenient:
imap <C-L> <C-X><C-L>

set remap
map <C-O><C-O> :split 
imap <C-O><C-O> <Esc>:split 

" Open new window with the file ~/.zshrc (my shell configuration file)
map <C-O><C-T> :split ~/.zshrc<CR>
imap <C-O><C-T> <Esc>:split ~/.zshrc<CR>

" Open new window with file ~/.vimrc (ViM configuration file)
map <C-O><C-K> :split ~/.vim/vimrc<CR>
imap <C-O><C-K> <Esc>:split ~/.vim/vimrc<CR>
" Open new window with dir ~/.vim (ViM configuration dir)
map <C-O><C-V> :split ~/.vim<CR>
imap <C-O><C-V> <Esc>:split ~/.vim<CR>

" diakritika 
":map <C-D><C-D> :so ~/.vim/diakritika.vim
":imap <C-D><C-D> <Esc>:so ~/.vim/diakritika.vim

" Safe delete line (don't add line to registers)
":imap <C-D> <Esc>"_ddi
"imap <C-D> <Esc>:call SafeLineDelete()<CR>i

"mappings to scroll alternate window
nmap <silent> <C-j> :call ScrollOtherWindow("down")<CR>
nmap <silent> <C-k> :call ScrollOtherWindow("up")<CR>

"map <C-\> :exec "tjump " . expand("<cword>")<CR>

" mappings for winmanager
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr>

" }}}

" <Leader> mappings {{{

" Eng/rus mappings {{{
map <Leader>rus !}tr "\`qwertyuiop[]asdfghjkl;'zxcvbnm,.~@\#$\%^&*QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>" "£ÊÃÕËÅÎÇÛÝÚÈßÆÙ×ÁÐÒÏÌÄÖÜÑÞÓÍÉÔØÂÀ³\"\'*:,.;êãõëåHçûýúèÿæù÷áðòïìäöüñþóíéôøâà"<CR>
map <Leader>eng !}tr "£ÊÃÕËÅÎÇÛÝÚÈßÆÙ×ÁÐÒÏÌÄÖÜÑÞÓÍÉÔØÂÀ³\"\'*:,.;êãõëåHçûýúèÿæù÷áðòïìäöüñþóíéôøâà" "\`qwertyuiop[]asdfghjkl;'zxcvbnm,.~@\#$\%^&*QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>"<CR>
" }}}

map <Leader>mk :w<CR>make<CR>

map <Leader>me :emenu <C-Z>

map <Leader>ss :syntax sync fromstart<CR>
nmap <Leader>sy :if has("syntax_items")<CR>syntax off<CR>else<CR>syntax on<CR>endif<CR><CR>

map <Leader>hl :nohlsearch<CR>

map <Leader>li :set list! list?<CR>

map <Leader>cv :!cvs2cl --fsf -t<CR>:!cvs2html -p -C changelog.html -o cvs/index.html -v<CR>

map <Leader>asp :!aspell --dont-backup check %<CR>
map <Leader>isp :!ispell -x %<CR>

map <Leader>sh :so ~/.vim/vimsh.vim<CR>

map <Leader>wr :set wrap! wrap?<CR>

map <Leader>nu :set number! number?<CR>

"" search the current word in all files in the working directory
map <Leader>x yaw:grep <C-R>" *<CR>

map <Leader>mx :!chmod +x %<CR>

"paste toggling
map <Leader>pa :set paste! paste?<CR>

"foldcolumn toggle
map <Leader>fco :set foldcolumn=3<CR>
map <Leader>fcc :set foldcolumn=0<CR>

"select foldmethod
map <Leader>zm :call ChangeFoldMethod()<CR>

"toggle foldopen
map <Leader>zo :call ToggleFoldOpen()<CR>

"toggle foldopen
map <Leader>zc :call ToggleFoldClose()<CR>

noremap zi :call ToggleFoldColumn()<CR>zi
map <leader>zi :set foldenable! foldenable?<CR>

"dict mapping
"map <Leader>d :let word=expand("<cword>")<CR><C-w>w:exec "0r! dict " . word<CR>i<CR><Esc>50i-<Esc>gg<C-w>w
map <Leader>d :let word=expand("<cword>")<CR>ea<CR><Esc><Up>:exec "r! echo " . word<CR>$a{{{<Esc>:exec "r! dict " . word<CR>i}}}<Esc>[{zc

" scrolloff toggling
map <Leader>son :set scrolloff=999<CR>
map <Leader>sof :set scrolloff=0<CR>

" }}}

" Mappings for folding {{{
" Open one foldlevel of folds in whole file
" Note: 'Z' works like 'z' but for all lines in file
noremap Zo mzggvGzo'z
noremap ZO mzggvGzO'z " same as 'zR' 
noremap Zc mzggvGzc'z
noremap ZC mzggvGzC'z
noremap Zd mzggvGzd'z
noremap ZD mzggvGzD'z
noremap Za mzggvGza'z
noremap ZA mzggvGzA'z
noremap Zx mzggvGzx'z
noremap ZX mzggvGzX'z

" }}}

" Imod mappings {{{
"To enable viewing messages from commands issued using the mappings presented
"here
"set cmdheight=2

imap  <C-O>
"The fundamental mapping that makes full-screen editing possible
"inoremap o <C-o>
"imap ; <C-o>:

"Basic motions
"imap h <Left>
"imap j <Down>
"imap k <Up>
"imap l <Right>
"imap f <PageDown>
"imap b <PageUp>
"imap 6 <Home>
"imap 4 <End>

"Numbers for repeats
"imap 1 <C-o>1
"imap 2 <C-o>2
"imap 3 <C-o>3
"imap 4 <C-o>4
"imap 5 <C-o>5
"imap 6 <C-o>6
"imap 7 <C-o>7
"imap 8 <C-o>8
"imap 9 <C-o>9

"Basic searches
"imap / <C-o>/
"imap 8 <C-o>*
"imap 3  <C-o>#
"imap n <C-o>n
"imap N <C-o>N

"Deleting
"imap x <C-o>x
"imap d <C-o>d
"imap D <C-o>D

"Yanking and putting
"imap y <C-o>y
"imap Y  <C-o>Y
"imap p <C-o>p
"imap P <C-o>P

"Common prefixes:  marking, matching etc.
"imap ~  <C-o>~
"imap m  <C-o>m
"imap `  <C-o>`
"imap "  <C-o>"
"imap %  <C-o>%
"imap H  <C-o>:h
"imap s  <C-o>:s

"Interacting with the 'outside'
"imap !  <C-o>:!
"imap w  <C-o>:w<CR>
"imap e  <C-o>:e

"Other commands
"imap u  <C-o>u
"imap .  <C-o>. 
" }}}
 
" GUI Imod mappings {{{
"To enable viewing messages from commands issued using the mappings presented
"here
"set cmdheight=2

"The fundamental mapping that makes full-screen editing possible
"inoremap <M-o> <C-o>
"imap <M-;> <C-o>:

"Basic motions
"imap <M-h> <Left>
"imap <M-j> <Down>
"imap <M-k> <Up>
"imap <M-l> <Right>
"imap <M-f> <PageDown>
"imap <M-b> <PageUp>
"imap <M-6> <Home>
"imap <M-4> <End>

"Numbers for repeats
"imap <M-1> <C-o>1
"imap <M-2> <C-o>2
"imap <M-3> <C-o>3
"imap <M-4> <C-o>4
"imap <M-5> <C-o>5
"imap <M-6> <C-o>6
"imap <M-7> <C-o>7
"imap <M-8> <C-o>8
"imap <M-9> <C-o>9

"Basic searches
"imap <M-/> <C-o>/
"imap <M-8> <C-o>*
"imap <M-3>  <C-o>#
"imap <M-n> <C-o>n
"imap <M-N> <C-o>N
"
"Deleting
"imap <M-x> <C-o>x
"imap <M-d> <C-o>d
"imap <M-D> <C-o>D

"Yanking and putting
"imap <M-y> <C-o>y
"imap <M-Y>  <C-o>Y
"imap <M-p> <C-o>p
"imap <M-P> <C-o>P

"Common prefixes:  marking, matching etc.
"imap <M-~>  <C-o>~
"imap <M-m>  <C-o>m
"imap <M-`>  <C-o>`
"imap <M-">  <C-o>"
"imap <M-%>  <C-o>%
"imap <M-H>  <C-o>:h
"imap <M-s>  <C-o>:s

"Interacting with the 'outside'
"imap <M-!>  <C-o>:!
"imap <M-w>  <C-o>:w<CR>
"imap <M-e>  <C-o>:e

""Other commands
"imap <M-u>  <C-o>u
"imap <M-.>  <C-o>. 
" }}}

" {{{ Make command lines editable, with history, as in Emacs:
cno <C-a>  <Home>
cno <C-b>  <Left>
"cno <C-d>  <Delete>
cno <C-e>  <End>
cno <C-f>  <Right>
cno <C-g>  <C-c>
cno <Esc>b <C-Left>
cno <Esc>f <C-Right>
cno <Esc>p <Up>
cno <Esc>n <Down>
"}}}

"APPROVED ÷ÔÒ éÀÌ 23 12:41:31 NOVST 2002

" Misc {{{

"call BuildHelp("vimrc"," Y : yank till the end of the line")
"  noremap Y y$

"call BuildHelp("vimrc"," Make 'gf' rebound to last cursor position (line *and* column)")
"  noremap gf gf`"

"call BuildHelp("vimrc"," The command {number}CTRL-G show the current nuffer number, too.")
" This is yet another feature that vi does not have.
" As I always want to see the buffer number I map it to CTRL-G.
" Pleae note that here we need to prevent a loop in the mapping by
" using the comamnd "noremap"!
  noremap <C-G> 2<C-G>
  
" move by visible lines
map <Up> gk
imap <Up> <C-O>gk
map <Down> gj
imap <Down> <C-O>gj

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv

" Jump to the tag associated with current word.  If more than one match is
" found, display list of matching tags.
" inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
" inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

" Search for the current Visual selection.
vmap S y/<C-R>=escape(@",'/\')<CR>


"dircd
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,cd :exe 'cd ' . expand ("%:p:h")<CR>

"zope
"map <Leader>Z :ZopeCOMMANDS<CR>

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<cr>
nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<cr>
nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<cr>
nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<cr>
vnoremap <silent> [l <esc>:call NextIndent(0, 0, 0, 1)<cr>m'gv''
vnoremap <silent> ]l <esc>:call NextIndent(0, 1, 0, 1)<cr>m'gv''
vnoremap <silent> [L <esc>:call NextIndent(0, 0, 1, 1)<cr>m'gv''
vnoremap <silent> ]L <esc>:call NextIndent(0, 1, 1, 1)<cr>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<cr>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<cr>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<cr>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<cr>


vnoremap > ><CR>gv
vnoremap < <<CR>gv

"Space acts as pageDown
map <Space> <PageDown>

" }}}


" }}}

let Flist_Key = '\fl'
"let Flist_Ctags_Cmd = '/usr/bin/ctags'

" New commands {{{
command! -nargs=1 Printf call libcallnr("/lib/libc.so.6", "printf", <args>)
command! -nargs=0 FoldLongLines call FoldLongLines()
command! -nargs=0 Indent call Indent()
command! -nargs=0 CallProg call CallProg()
command! -nargs=0 OpenAllWin call OpenAllWin()
command! -nargs=0 UnquoteMailBody call UnquoteMailBody()
command! -nargs=* ReadFileAboveCursor call ReadFileAboveCursor(<f-args>)
command! -nargs=* R call ReadFileAboveCursor(<f-args>)
command! CD cd %:p:h
" }}}

" Autocomands {{{
if has("autocmd")
	
" Autocomands for GUIEnter {{{
"augroup GUIEnter
"	autocmd!
"	autocmd GUIEnter * set t_vb=
"	if has("gui_win32")
"		autocmd GUIEnter * simalt ~x
"	endif
"augroup END
" }}}

autocmd BufWritePost * filetype detect
	
" Autocomands for ~/.vimrc {{{
"augroup VimConfig
"	autocmd!
" Reread configuration of ViM if file ~/.vimrc is saved
"autocmd BufWritePost ~/.vimrc	so ~/.vimrc| so ~/.gvimrc | exec "normal zv"
"autocmd BufWritePost ~/.vim/vimrc	so ~/.vim/vimrc | exec "normal zv"
"augroup END
" }}}

" Autocommands for *.c, *.h, *.cc *.cpp {{{
augroup C
	autocmd!
"formatovanie C-zdrojakov
	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	map  <buffer> <C-F> mfggvG$='f
	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	imap <buffer> <C-F> <Esc>mfggvG$='fi
	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	map <buffer> yii yyp3wdwi
	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	map <buffer> <C-K> :call CallProg()<CR>
	autocmd BufRead,BufNewFile  *.c,*.h,*.cc,*.cpp	setlocal cindent
	autocmd BufRead,BufNewFile  *.c,*.h,*.cc,*.cpp	setlocal cinoptions=>4,e0,n0,f0,{0,}0,^0,:4,=4,p4,t4,c3,+4,(2s,u1s,)20,*30,g4,h4
	autocmd BufRead,BufNewFile  *.c,*.h,*.cc,*.cpp	setlocal cinkeys=0{,0},:,0#,!<C-F>,o,O,e
augroup END
" }}}

" Autocommands for *.html *.cgi {{{
autocmd Filetype html source ~/.vim/ftplugin/EasyHtml.vim
" Automatic updates date of last modification in HTML files. File must
" contain line "^\([<space><Tab>]*\)Last modified: ",
" else will be date writtend on the current " line.
"augroup HtmlCgiPHP
"	autocmd!
" Appending right part of tag in HTML files.
"	autocmd BufEnter                 *.html	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
"	autocmd BufWritePre,FileWritePre *.html	call AutoLastMod()
"	autocmd BufEnter                 *.cgi	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
"	autocmd BufWritePre,FileWritePre *.cgi	call AutoLastMod()
"	autocmd BufEnter                 *.php	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
"	autocmd BufWritePre,FileWritePre *.php	call AutoLastMod()
"	autocmd BufEnter                 *.php3	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
"	autocmd BufWritePre,FileWritePre *.php3	call AutoLastMod()
"augroup END
" }}}

" Autocomands for *.tcl {{{
augroup Tcl
	autocmd!
	autocmd WinEnter            *.tcl	map <buffer> <C-K> :call CallProg()<CR>
	autocmd BufRead,BufNewFile  *.tcl	setlocal autoindent
augroup END
" }}}

" Autocomands for Makefile {{{
augroup Makefile
	autocmd!
	autocmd BufEnter            [Mm]akefile*	map <buffer> <C-K> :call CallProg()<CR>
augroup END
" }}}

" Python {{{
augroup Py
    autocmd BufEnter *.py map <buffer> <F9> :w<CR>:!python % 
augroup END
" }}}

" Java {{{
augroup Java
    autocmd BufEnter *.java map <buffer> <M-F9> :JavaRun<CR>
    autocmd BufEnter *.java imap <buffer> <M-F9> <esc>:JavaRun<CR>
    "mappings for jcommenter
    autocmd FileType java source ~/.vim/macros/jcommenter.vim
    " map the commenter:
    autocmd BufEnter *.java map <buffer> <M-F10> :call JCommentWriter()<CR>
    autocmd BufEnter *.java imap <buffer> <M-F10> <esc>:call JCommentWriter()<CR>
   " map searching for invalid comments. meta-n for next invalid comment, meta-p
   " for previous. "Invalid" in this case means that the "main" comments are missing
   " or the tag description is missing. Handy when searching for missing comments
   " or when jumping to next tag (no need to use cursor keys (yuck!) or quit insert
   " mode).
   autocmd BufEnter *.java map <buffer> <M-F11> :call SearchInvalidComment(0)<cr>
   autocmd BufEnter *.java imap <buffer> <M-F11> <esc>:call SearchInvalidComment(0)<cr>a
   autocmd BufEnter *.java map <buffer> <M-F12> :call SearchInvalidComment(1)<cr>
   autocmd BufEnter *.java imap <buffer> <M-F12>jp <esc>:call SearchInvalidComment(1)<cr>a
augroup END
" }}}

au BufNewFile,BufRead *.dtml,*.dtm,*.sdtml  setf dtml

"ft macroses
    "autocmd Filetype html source ~/.vim/html-macros.vim
    "autocmd Filetype ruby source ~/.vim/ruby-macros.vim 
    "autocmd Filetype tex source ~/.vim/auctex.vim
    "autocmd Filetype c,cpp source ~/.vim/c.vim
    "autocmd BufLeave *.c,*.C  call CVIM_HandleC()
    "autocmd BufEnter *.c,*.C  call CVIM_HandleC()
    "autocmd Filetype c,php,perl,java,asm,awk,cpp,cobol,eiffel,fortran,lisp,make,pascal,python,rexx,ruby,scheme,sh,slang,tcl,vim source ~/.vim/funcmenu.vim


"To read a skeleton (template) file when opening a new file
"if has("eval")
    "autocmd BufNewFile  *.c      0r ~/.vim/skeleton.c
    "autocmd BufNewFile  *.pl      0r ~/.vim/skeleton.pl

au CmdwinEnter * nmap <buffer> <ESC> :quit<CR>
au CmdwinLeave * nunmap <buffer> <ESC>
    
endif " if has("autocmd")
"
" }}} Autocomands

" Functions {{{
" Function ScrollOtherWindow() {{{
fun! ScrollOtherWindow(dir)
	if a:dir == "down"
		exec "normal \<C-W>p\<C-E>\<C-W>p"
	elseif a:dir == "up"
		exec "normal \<C-W>p\<C-Y>\<C-W>p"
	endif
endfun
" ScrollOtherWindow() }}}

" Function InsertTabWrapper() {{{
" tab do completion 
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
" InsertTabWrapper() }}}


function! ToggleFoldColumn() "{{{
    if &foldcolumn !=0
        set foldcolumn=0
    else
        set foldcolumn=4
    endif
endfunction
" ToggleFoldColumn() }}}

function! ToggleFoldOpen() "{{{
    if &foldopen == "all"
        set foldopen& foldopen?
    else
        set foldopen=all foldopen?
    endif
endfunction
" ToggleFoldOpen() }}}

function! ToggleFoldClose() "{{{
    if &foldclose == "all"
        set foldclose& foldclose?
    else
        set foldclose=all foldclose?
    endif
endfunction
" ToggleFoldOpen() }}}

" Function ChangeFoldMethod() {{{
" Function for changing folding method.
"
if version >= 600
	fun! ChangeFoldMethod()
		let choice = confirm("Which foldmethod?", "&manual\n&indent\n&expr\nma&rker\n&syntax", 2)
		if choice == 1
			set foldmethod=manual
		elseif choice == 2
			set foldmethod=indent
		elseif choice == 3
			set foldmethod=expr
		elseif choice == 4
			set foldmethod=marker
		elseif choice == 5
			set foldmethod=syntax
		else
		endif
	endfun
endif
" ChangeFoldMethod() }}}

" Function FoldLongLines() {{{
"
if version >= 600
	fun! FoldLongLines()
"		Get screen size:
		let lines = system("`which tcsh` -f -c telltc | " .
				\ "grep lines | awk '{print \$6-1}'")
		let info = "<Esc>[" . lines . ";0HProcessing line "
"		Set mark for return back
		exec "normal mF"
"		Delete line
		Printf(&t_dl)
		exec "1go"
		let lnum = line(".")
		let lend = line("$")
		while lnum <= lend
			Printf(info . lnum)
"			Skip closed folds
			if foldclosed(lnum) != -1
				let lnum = foldclosedend(lnum) + 1
				continue
			endif
			let dlzka = strlen(getline("."))
			if dlzka >= g:fold_long_lines
"				Create fold for one line
				exec "normal zfl"
			endif
			let lnum = line(".")
"			Move one line down
			exec "normal j"
			if lnum == lend
				break
			endif
		endwhile
		Printf("  --  OK\n")
"		Skip back to the mark
		exec "normal 'F"
		redraw!
	endfun
endif
" FoldLongLines() }}}

" Function AutoLastMod() {{{
" Provides atomatic change of date in files, if it is set via
" modeline variable autolastmod to appropriate value.
"
fun! AutoLastMod()
if exists("g:autolastmod")
	if g:autolastmod < 0
		return 0;
	elseif g:autolastmod == 1
		call LastMod(g:autolastmodtext)
	endif
endif
endfun
" AutoLastMod() }}}

" Function LastMod() {{{
" Automatic change date in *.html files.
"
fun! LastMod(text, ...)
	mark d
	let line = "\\1" . strftime("%Y %b %d %X") " text of changed line
	let find = "g/" . a:text           " regexpr to find line
	let matx = a:text . ".*"            " ...if line was found
	exec find
	let curr_line = getline(".")
	if match(curr_line, matx) == 0
		" call setline(line("."), line)
		call setline(line("."), substitute(getline("."), matx, line, ""))
		exec "'d"
	endif
endfun
" LastMod() }}}

" Function OpenAllWin() {{{
" Opens windows for all files in the command line.
" Variable "opened" is used for testing, if window for file was already opened
" or not. This is prevention for repeat window opening after ViM config file
" reload.
"
fun! OpenAllWin()
	let i = 0
	if !exists("opened")
		while i < argc() - 1
			split
			n
			let i = i + 1
		endwhile
	endif
	let opened = 1
endfun

if exists("g:open_all_win")
	if g:open_all_win == 1
		call OpenAllWin()
	endif
endif
" OpenAllWin() }}}

" Function CallProg() {{{
fun! CallProg()
	let choice = confirm("Call:", "&make\nm&ake in cwd\n" .
						\ "&compile\nc&ompile in cwd\n" .
						\ "&run\nr&un in cwd")
	if choice == 1
		exec ":wall"
		exec "! cd %:p:h; pwd; make " . g:makeflags
	elseif choice == 2
		exec ":wall"
		exec "! cd " .
				\ getcwd() . "; pwd; make " . g:makeflags
	elseif choice == 3
		:call Compile(1)
	elseif choice == 4
		:call Compile(0)
	elseif choice == 5
		exec "! cd %:p:h; pwd; ./%:t:r"
	elseif choice == 6
		exec "! cd " . getcwd() . "; pwd; ./%<"
	endif
endfun
" CallProg() }}}

" Function Compile() {{{
fun! Compile(do_chdir)
	let cmd = ""
	let filename = ""
	let filename_ext = ""

	if a:do_chdir == 1
		let cmd = "! cd %:p:h; pwd; "
		let filename = "%:t:r"
		let filename_ext = "%:t"
	else
		let cmd = "! cd " . getcwd() . "; pwd; "
		let filename = "%<"
		let filename_ext = "%"
	endif

	let choice = confirm("Call:", 
		\ "&compile\n" .
		\ "compile and &debug\n" .
		\ "compile and &run\n" .
		\ "compile using first &line")

	if choice != 0
		exec ":wall"
	endif

	if choice == 1
		exec cmd . "gcc " . g:cflags . 
			\ " -o " . filename . " " . filename_ext
	elseif choice == 2
		exec cmd . "gcc " . g:cflags . " " . g:c_debug_flags . 
			\ " -o " . filename . " " . filename_ext " && gdb " . filename
	elseif choice == 3
		exec cmd . "gcc " . g:cflags . 
			\ " -o " . filename . " " . filename_ext " && ./" . filename
	elseif choice == 4
		exec cmd . "gcc " . g:cflags . 
			\ " -o " . filename . " " . filename_ext . 
			\ substitute(getline(2), "VIMGCC", "", "g")
	endif
endfun
" Compile() }}}

" Function Indent() {{{
" Indents source code.
fun! Indent()
" If there is set equalprg to source indenting (ie. perltidy for perl sources)
" we have not to executes "'f" at the end, else we will got "Mark not set"
" error message.
	if &equalprg == ""
		exec "normal mfggvG$='f"
	else
		exec "normal mfggvG$="
	endif
endfun
" Indent() }}}

" Function UnquoteMailBody() {{{
"
fun! UnquoteMailBody()
" Every backslash character must be escaped in function -- Nepto
	exec "normal :%s/^\\([ ]*>[ ]*\\)*\\(\\|[^>].*\\)$/\\2/g<CR>"
endfun
" UnquoteMailBody() }}}

" Function SafeLineDelete() {{{
"
fun! SafeLineDelete()
	exec "normal \"_dd"
endfun
" SafeLineDelete() }}}

" Function GetUID() {{{
" - used in statusline.
" If you are root, function return "# " string --> it is showed at begin of
"                                                  statusline
" If you aren't root, function return empty string --> nothing is visible
let g:get_id=""
if executable("id")
	" Check for your name ID
	let g:get_id = $USER
	" If you are root, set to '#', else set to ''
	if g:get_id == "root"
		let g:get_id = "# "
	else
		let g:get_id = ""
	endif
endif
fun! GetUID()
	return g:get_id
endfun
" GetUID() }}}

" Function ReadFileAboveCursor() {{{
"
fun! ReadFileAboveCursor(file, ...)
	let str = ":" . (v:lnum - 1) . "read " . a:file
	let idx = 1
	while idx <= a:0
		exec "let str = str . \" \" . a:" . idx
		let idx = idx + 1
	endwhile
	exec str
endfun
" ReadFileAboveCursor() }}}

"
" NextIndent()
"
" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool):   true:  Motion is exclusive
"                     false: Motion is inclusive
" fwd (bool):         true:  Go to next line
"                     false: Go to previous line
" lowerlevel (bool):  true:  Go to line with lower indentation level
"                     false: Go to line with the same indentation level
" skipblanks (bool):  true:  Skip blank lines
"                     false: Don't skip blank lines

function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
	let line = line('.')
	let column = col('.')
	let lastline = line('$')
	let indent = indent(line)
	let stepvalue = a:fwd ? 1 : -1

	while (line > 0 && line <= lastline)
		let line = line + stepvalue
		if (	! a:lowerlevel && indent(line) == indent ||
				\ a:lowerlevel && indent(line) < indent)
			if (! a:skipblanks || strlen(getline(line)) > 0)
				if (a:exclusive)
					let line = line - stepvalue
				endif
				exe line
				exe "normal " column . "|"
				return
			endif
		endif
	endwhile
endfunc

" }}}

" Colors {{{

set background=dark
"hi StatusLine   term=bold,reverse cterm=bold,reverse
"hi StatusLineNC term=reverse      cterm=reverse
"hi StatusLine   gui=bold          guifg=Black guibg=White
"hi StatusLineNC gui=bold,reverse  guifg=White guibg=Black
"hi User1 term=inverse,bold  cterm=inverse,bold ctermfg=Red
"hi User2 term=bold          cterm=bold         ctermfg=Yellow
"hi User3 term=inverse,bold  cterm=inverse,bold ctermfg=Blue
"hi User4 term=inverse,bold  cterm=inverse,bold ctermfg=LightBlue
"hi User5 term=inverse,bold  cterm=inverse,bold ctermfg=Red ctermbg=Green
"hi User1 gui=bold guifg=White     guibg=Red
"hi User2 gui=bold guifg=Yellow    guibg=Black
"hi User3 gui=bold guifg=Blue      guibg=White
"hi User4 gui=bold guifg=LightBlue guibg=White
"hi User5 gui=bold guifg=Green     guibg=Red
"hi Folded     term=standout cterm=bold ctermfg=4        ctermbg=Black
"hi FoldColumn term=standout            ctermfg=DarkBlue ctermbg=Black 
"hi Folded     gui=bold guibg=Black guifg=Blue
"hi FoldColumn          guibg=Black guifg=Blue

" }}}

" Includes {{{
"menu in console
"mapping \me
source $VIMRUNTIME/menu.vim

source $VIMRUNTIME/ftplugin/man.vim
" }}}

" End {{{
function FoldenableSync()
    if(&foldcolumn!=0)
        set foldenable
    else 
        set nofoldenable
endif
endfun

autocmd Bufenter * call FoldenableSync()
autocmd Syntax java syn region azFold1 start="/\*"  end="\*/" transparent fold keepend
autocmd Syntax java syn clear javaBraces
autocmd Syntax java syn region azFold2 start="{"  end="}" transparent fold


syn sync fromstart
" }}}
"
let g:miniBufExplMapCTabSwitchBufs = 1

" Modeline {{{
" vim:foldmethod=marker:nofoldenable:
" }}}
