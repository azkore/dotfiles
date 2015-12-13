set nocompatible "be iMproved
"Vundle settings {{{
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'    " let Vundle manage Vundle, required
Plugin 'flazz/vim-colorschemes'

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree'  " Project and file navigation
Plugin 'majutsushi/tagbar'    " Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'          " Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'  " Pending tasks list
Plugin 'rosenfeld/conque-term'      " Consoles as buffers
Plugin 'tpope/vim-surround'         " Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'          " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils' " dependencies #1
Plugin 'tomtom/tlib_vim'              " dependencies #2
Plugin 'honza/vim-snippets'           " snippets repo

"git
"Plugin 'tpope/vim-fugitive'

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'              " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'          " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'           " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined' " Combined Python 2/3 for Vim

Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'rust-lang/rust.vim'


call vundle#end()               " required
filetype on
filetype plugin on
filetype plugin indent on
"}}}
"General settings{{{
if has("gui_running")
  set gcr=a:blinkon0
  set cursorline
  set lines=46 columns=125
  "colorscheme slate
  "colorscheme molokai
  "colorscheme zenburn
  colorscheme monokain
  set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 18
  "set guioptions-=m   " -menu
  set guioptions-=T    " -toolbar
  "set guioptions-=r   " -scrollbars 
else
"  colorscheme myterm
   "colorscheme monokain
   colorscheme slate
   set background=dark
endif

set backspace=indent,eol,start
set mouse=a
set ttyfast
syntax on
filetype plugin indent on

"aunmenu Help.
"aunmenu Window.
"let no_buffers_menu=1
"set mousemodel=popup
"set ruler
"set completeopt-=preview
"autocmd vimenter * TagbarToggle
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif

tab sball "open each cmdline arg in own tab
set switchbuf=usetab " consider windows and tabs when switching buffers

set visualbell t_vb=
set novisualbell

set encoding=utf-8
scriptencoding utf-8
set laststatus=2     " always display statusbar
set incsearch	     " incremental search
set hlsearch	     " highlight search terms
set nu	             " line numbers on
set scrolloff=5      " minimum lines to keep above and below cursor

"set noswapfile 	     " no swap files

set smarttab         " spaces instead tabs
set tabstop=2        " how many
set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set history=10000               " Store a ton of history (default is 20)
set hidden                      " allow buffer switching without saving
set confirm
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set shell=zsh " shell to start with !
"clipboard is unnamed reguster
if has ("win32")
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif
set cpoptions-=<
"Persistence {{{
set directory=~/.vimswap/,~/tmp,/var/tmp,/tmp "swapfiles
set backup                      " backups are nice ...
set backupdir=~/.vimbackup
if has('persistent_undo')
  set undodir=~/.vimundo
  set undofile                "so is persistent undo ...
  set undolevels=10000         "maximum number of changes that can be undone
  set undoreload=10000        "maximum number lines to save for undo on a buffer reload
endif
set viewdir=~/.vim/views
"au BufWinLeave *.* silent! mkview  "make vim save view (state) (folds, cursor, etc)
"au BufWinEnter *.* silent! loadview "make vim load view (state) (folds, cursor, etc)
set viminfo=!,h,'5000,\"10000,:10000,/10000,n~/.viminfo
"}}}
"}}}
" UI {{{
set showmode                    " display the current mode
set showcmd                     " show partial commands in status line and
set showmatch                   " show matching brackets/parenthesis
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set nu                          " Line numbers on
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=999               " minimum lines to keep above and below cursor
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set nostartofline                             " The cursor is kept in the same column (if possible)
set tildeop                                   "  allow tilde (~) to act as an operator -- ~w, etc.
set whichwrap=b,s,<,>,[,],h,l                 " wrap around lines
set visualbell
set lazyredraw
set infercase
set noendofline "set showfulltag 
set report=0
"Folding {{{ 
set foldenable                  " auto fold code
"set foldmethod=marker
"set foldmethod=syntax
"set foldclose=all
"set foldlevel=0
"set foldcolumn=4
"}}}
" Status line settings {{{
set laststatus=2 " Display a status-bar.
"set statusline=%<[%n]\ %f\ %1*%m%*%r%h%w%y%k\ %=%-19(%3l/%L,%02c%03V\ %P%a%)%o\ '%03b'
    set statusline="%5*".GetUID()."%0*" "'#' if root empty otherwise
    set statusline+=%1*%n%0* "buffer number
    set statusline+=%<%f\  "filename
    set statusline+=%1*%m "modified?
    set statusline+=%1*%r%0* "readonly?
    "set statusline+=%{fugitive#statusline()} "git status  
    set statusline+=\ [%{&ff}/%Y] "fileformat/filetype
    set statusline+=%1*%w%0* "preview?
    set statusline+=\ %{getcwd()}          " current dir
    set statusline+=%= "right aligned
    set statusline+=%=[%b\ 0x%B]\   "value of char under cursor, bin and hex
    set statusline+=[%c%V/%{strlen(getline(line('.')))}\ %l/%L] "cursor position
    set statusline+=\ %P" "percentage of file
"}}}
" настройки Vim-Airline
set laststatus=2
let g:airline_theme='light'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"}}}
"Formatting {{{
    "set nowrap                      " wrap long lines
    set autoindent                  " indent at the same level of the previous line
    set shiftwidth=2                " use indents of 4 spaces
    set expandtab                   " tabs are spaces, not tabs
    set tabstop=2                   " an indentation every four columns
    set softtabstop=2               " let backspace delete indent
    "set matchpairs+=<:>                " match, to be used with %
    set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
    " Remove trailing whitespaces and ^M chars
    "autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
"}}}
"Programming{{{
"  при переходе за границу в 80 символов в Ruby/Python/js/C/C++ подсвечиваем на темном фоне текст
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

" указываем каталог с настройками SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"


" TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

" NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

" TaskList настройки
map <F2> :TaskList<CR> 	   " отобразить список тасков на F2

" Работа буфферами
map <C-q> :bd<CR> 	   " CTRL+Q - закрыть текущий буффер

"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0

" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0

"=====================================================
" User hotkeys
"=====================================================
" ConqueTerm
" запуск интерпретатора на F5
nnoremap <F5> :ConqueTermSplit ipython<CR>
" а debug-mode на <F6>
nnoremap <F6> :exe "ConqueTermSplit ipython -i " . expand("%")<CR>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0
" проверка кода в соответствии с PEP8 через <leader>8
autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>

" автокомплит через <Ctrl+Space>
inoremap <C-space> <C-x><C-o>

" переключение между синтаксисами
nnoremap <leader>Th :set ft=htmljinja<CR>
nnoremap <leader>Tp :set ft=python<CR>
nnoremap <leader>Tj :set ft=javascript<CR>
nnoremap <leader>Tc :set ft=css<CR>
nnoremap <leader>Td :set ft=django<CR>

"=====================================================
" Languages support
"=====================================================
" --- Python ---
"autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" --- JavaScript ---
let javascript_enable_domhtmlcss=1
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" --- HTML ---
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" --- template language support (SGML / XML too) ---
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
autocmd BufNewFile,BufRead *.mako setlocal ft=mako
autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
let html_no_rendering=1
let g:closetag_default_xml=1
let g:sparkupNextMapping='<c-l>'
autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source ~/.vim/scripts/closetag.vim

" --- CSS ---
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
"}}}
"Plugins{{{
let g:nerdtree_tabs_open_on_gui_startup=0
"let g:snips_trigger_key='<c-space>'
"}}}
"Mappings {{{

"The default leader is '\', but many people prefer ',' as it's in a standard location
"let mapleader = ','
set wildcharm=<C-Z>

""Fn Keys {{{
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
map <F4> :NERDTreeToggle<CR>
imap <F4> <esc>:NERDTreeToggle<CR>

""F5 - switch to alternate buffer
map <F5> 
imap <F5> <C-O>

"F6 - previous buffer
map <F6> :bp<CR>
imap <F6> <C-O>:bp<CR>

"F7 - next buffer
map <F7> :bn<CR>
imap <F7> <C-O>:bn<CR>
"
"F8 - wipeout buffer
map <F8> :bwipe<CR>
imap <F8> <C-O>:bwipe<CR>

"F9 - :make
map <F9> :w<CR>:make<CR>
imap <F9> <esc>:w<CR>:make<CR>i

nmap <Leader>M <ESC>:wa<CR>:make!<CR>

"F10 - menu
map <F10> :emenu<C-Z>
imap <F10> <esc>:emenu<C-Z>

"F11 - start vim shell
map <F11> :so ~/.vim/vimsh.vim<CR>
imap <F11> <esc>:so ~/.vim/vimsh.vim<CR>

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
" }}}

"menu in console
source $VIMRUNTIME/menu.vim
map <Leader>me :emenu <C-Z>
"}}}
" New commands {{{
command! CD cd %:p:h
" }}}
"Autocomands {{{
if has("autocmd")

" Autocomands for ~/.vimrc {{{
augroup VimConfig
autocmd!
" Reread configuration of ViM if file ~/.vimrc is saved
autocmd BufWritePost ~/.vimrc so ~/.vimrc | if has("gui_running") | so ~/.gvimrc | endif | exec "normal zv"
augroup END
"}}}

endif
"}}}
""Completion {{{
"set dictionary+=~/.vim/words
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
   \   if &omnifunc == "" |
    \     setlocal omnifunc=syntaxcomplete#Complete |
    \   endif
endif
""" !!!!!!!!! MESSING WITH arrow keys on insert mode
"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" neocomplcache {{{
let g:neocomplcache_enable_at_startup = 1 "enable it
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_snippets_dir='~/.vim/bundle/snipmate-snippets/snippets'
"
"" AutoComplPop like behavior.
""let g:neocomplcache_enable_auto_select = 0
"
"" SuperTab like snippets behavior.
""imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"
"" Plugin key-mappings.
""imap <C-k>     <Plug>(neocomplcache_snippets_expand)
""smap <C-k>     <Plug>(neocomplcache_snippets_expand)
""inoremap <expr><C-g>     neocomplcache#undo_completion()
""inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
""inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
""inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
""inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
""inoremap <expr><C-y>  neocomplcache#close_popup()
""inoremap <expr><C-e>  neocomplcache#cancel_popup()
"
"" Enable omni completion.
""autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
""autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
""autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
""autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
""autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"" Enable heavy omni completion.
"if !exists('g:neocomplcache_omni_patterns')
"    let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
""autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"
"" For snippet_complete marker.
"if has('conceal')
"    set conceallevel=2 concealcursor=i
"endif
""}}}
"    " OmniComplete {{{
""        if has("autocmd") && exists("+omnifunc")
""            autocmd Filetype *
""                \if &omnifunc == "" |
""                \setlocal omnifunc=syntaxcomplete#Complete |
""                \endif
""        endif
"
""        hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
""        hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
""        hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE
""
""        " some convenient mappings
""        inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
""        inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
""        inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
""        inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
""        inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
""        inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
""
""        " automatically open and close the popup menu / preview window
""        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
""        set completeopt=menu,preview,longest
"    " }}}
"""Completion {{{
"""set ofu=syntaxcomplete#Complete
""
"""let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"""let g:SuperTabDefaultCompletionType = "context"
""
""" Available TAGS files
"""set tags=./TAGS,./tags,tags
""
""" Is there a tags file? Is so I'd like to use it's absolute path in case we
""" chdir later
"""if filereadable("tags")
"""    exec "set tags+=" . $PWD . "/tags"
"""endif
"""}}}
""    " SnipMate {
""        " Setting the author var
""        " If forking, please overwrite in your .vimrc.local file
""        let g:snips_author = 'Steve Francia <steve.francia@gmail.com>'
""        " Shortcut for reloading snippets, useful when developing
""        nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr>
""    " }
""}}}
""not approved {{{
" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"" oldvimrc  {{{
"" Autocomands {{{
""if has("autocmd")
"
"" Autocommands for *.c, *.h, *.cc *.cpp {{{
""augroup C
""	autocmd!
"""formatovanie C-zdrojakov
""	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	map  <buffer> <C-F> mfggvG$='f
""	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	imap <buffer> <C-F> <Esc>mfggvG$='fi
""	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	map <buffer> yii yyp3wdwi
""	autocmd BufEnter     *.c,*.h,*.cc,*.cpp	map <buffer> <C-K> :call CallProg()<CR>
""	autocmd BufRead,BufNewFile  *.c,*.h,*.cc,*.cpp	setlocal cindent
""	autocmd BufRead,BufNewFile  *.c,*.h,*.cc,*.cpp	setlocal cinoptions=>4,e0,n0,f0,{0,}0,^0,:4,=4,p4,t4,c3,+4,(2s,u1s,)20,*30,g4,h4
""	autocmd BufRead,BufNewFile  *.c,*.h,*.cc,*.cpp	setlocal cinkeys=0{,0},:,0#,!<C-F>,o,O,e
""augroup END
"" }}}
"
"" Autocommands for *.html *.cgi {{{
"" Automatic updates date of last modification in HTML files. File must
"" contain line "^\([<space><Tab>]*\)Last modified: ",
"" else will be date writtend on the current " line.
""augroup HtmlCgiPHP
""	autocmd!
"" Appending right part of tag in HTML files.
""	autocmd BufEnter                 *.html	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
""	autocmd BufWritePre,FileWritePre *.html	call AutoLastMod()
""	autocmd BufEnter                 *.cgi	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
""	autocmd BufWritePre,FileWritePre *.cgi	call AutoLastMod()
""	autocmd BufEnter                 *.php	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
""	autocmd BufWritePre,FileWritePre *.php	call AutoLastMod()
""	autocmd BufEnter                 *.php3	imap <buffer> QQ </><Esc>2F<lywf>f/pF<i
""	autocmd BufWritePre,FileWritePre *.php3	call AutoLastMod()
""augroup END
"" }}}
"
"" Autocomands for *.tcl {{{
""augroup Tcl
""	autocmd!
""	autocmd WinEnter            *.tcl	map <buffer> <C-K> :call CallProg()<CR>
""	autocmd BufRead,BufNewFile  *.tcl	setlocal autoindent
""augroup END
"" }}}
"
"" Autocomands for Makefile {{{
""augroup Makefile
""	autocmd!
""	autocmd BufEnter            [Mm]akefile*	map <buffer> <C-K> :call CallProg()<CR>
""augroup END
"" }}}
"
"" Python {{{
""augroup Py
""    autocmd BufEnter *.py map <buffer> <F9> :w<CR>:!python % 
""augroup END
"" }}}
"
"" Java {{{
""augroup Java
""    autocmd BufEnter *.java map <buffer> <M-F9> :JavaRun<CR>
""    autocmd BufEnter *.java imap <buffer> <M-F9> <esc>:JavaRun<CR>
""    "mappings for jcommenter
""    autocmd FileType java source ~/.vim/macros/jcommenter.vim
""    " map the commenter:
""    autocmd BufEnter *.java map <buffer> <M-F10> :call JCommentWriter()<CR>
""    autocmd BufEnter *.java imap <buffer> <M-F10> <esc>:call JCommentWriter()<CR>
""   " map searching for invalid comments. meta-n for next invalid comment, meta-p
""   " for previous. "Invalid" in this case means that the "main" comments are missing
""   " or the tag description is missing. Handy when searching for missing comments
""   " or when jumping to next tag (no need to use cursor keys (yuck!) or quit insert
""   " mode).
""   autocmd BufEnter *.java map <buffer> <M-F11> :call SearchInvalidComment(0)<cr>
""   autocmd BufEnter *.java imap <buffer> <M-F11> <esc>:call SearchInvalidComment(0)<cr>a
""   autocmd BufEnter *.java map <buffer> <M-F12> :call SearchInvalidComment(1)<cr>
""   autocmd BufEnter *.java imap <buffer> <M-F12>jp <esc>:call SearchInvalidComment(1)<cr>a
""augroup END
""" }}}
"
""a"u BufNewFile,BufRead *.dtml,*.dtm,*.sdtml  setf dtml
"
""ft macroses
"    "autocmd Filetype html source ~/.vim/html-macros.vim
"    "autocmd Filetype ruby source ~/.vim/ruby-macros.vim 
"    "autocmd Filetype tex source ~/.vim/auctex.vim
"    "autocmd Filetype c,cpp source ~/.vim/c.vim
"    "autocmd BufLeave *.c,*.C  call CVIM_HandleC()
"    "autocmd BufEnter *.c,*.C  call CVIM_HandleC()
"    "autocmd Filetype c,php,perl,java,asm,awk,cpp,cobol,eiffel,fortran,lisp,make,pascal,python,rexx,ruby,scheme,sh,slang,tcl,vim source ~/.vim/funcmenu.vim
"
"
""To read a skeleton (template) file when opening a new file
""if has("eval")
"    "autocmd BufNewFile  *.c      0r ~/.vim/skeleton.c
"    "autocmd BufNewFile  *.pl      0r ~/.vim/skeleton.pl
"
""au CmdwinEnter * nmap <buffer> <ESC> :quit<CR>
""au CmdwinLeave * nunmap <buffer> <ESC>
"    
""endif " if has("autocmd")
""
"" }}} Autocomands
"" Functions {{{
"" Function ScrollOtherWindow() {{{
"fun! ScrollOtherWindow(dir)
"	if a:dir == "down"
"		exec "normal \<C-W>p\<C-E>\<C-W>p"
"	elseif a:dir == "up"
"		exec "normal \<C-W>p\<C-Y>\<C-W>p"
"	endif
"endfun
"" ScrollOtherWindow() }}}
"
"" Function InsertTabWrapper() {{{
"" tab do completion 
"function! InsertTabWrapper(direction)
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    elseif "backward" == a:direction
"        return "\<c-p>"
"    else
"        return "\<c-n>"
"    endif
"endfunction
"" InsertTabWrapper() }}}
"
"
"function! ToggleFoldColumn() "{{{
"    if &foldcolumn !=0
"        set foldcolumn=0
"    else
"        set foldcolumn=4
"    endif
"endfunction
"" ToggleFoldColumn() }}}
"
"function! ToggleFoldOpen() "{{{
"    if &foldopen == "all"
"        set foldopen& foldopen?
"    else
"        set foldopen=all foldopen?
"    endif
"endfunction
"" ToggleFoldOpen() }}}
"
"function! ToggleFoldClose() "{{{
"    if &foldclose == "all"
"        set foldclose& foldclose?
"    else
"        set foldclose=all foldclose?
"    endif
"endfunction
"" ToggleFoldOpen() }}}
"
"" Function ChangeFoldMethod() {{{
"" Function for changing folding method.
""
"if version >= 600
"	fun! ChangeFoldMethod()
"		let choice = confirm("Which foldmethod?", "&manual\n&indent\n&expr\nma&rker\n&syntax", 2)
"		if choice == 1
"			set foldmethod=manual
"		elseif choice == 2
"			set foldmethod=indent
"		elseif choice == 3
"			set foldmethod=expr
"		elseif choice == 4
"			set foldmethod=marker
"		elseif choice == 5
"			set foldmethod=syntax
"		else
"		endif
"	endfun
"endif
"" ChangeFoldMethod() }}}
"
"" Function FoldLongLines() {{{
""
"if version >= 600
"	fun! FoldLongLines()
""		Get screen size:
"		let lines = system("`which tcsh` -f -c telltc | " .
"				\ "grep lines | awk '{print \$6-1}'")
"		let info = "<Esc>[" . lines . ";0HProcessing line "
""		Set mark for return back
"		exec "normal mF"
""		Delete line
"		Printf(&t_dl)
"		exec "1go"
"		let lnum = line(".")
"		let lend = line("$")
"		while lnum <= lend
"			Printf(info . lnum)
""			Skip closed folds
"			if foldclosed(lnum) != -1
"				let lnum = foldclosedend(lnum) + 1
"				continue
"			endif
"			let dlzka = strlen(getline("."))
"			if dlzka >= g:fold_long_lines
""				Create fold for one line
"				exec "normal zfl"
"			endif
"			let lnum = line(".")
""			Move one line down
"			exec "normal j"
"			if lnum == lend
"				break
"			endif
"		endwhile
"		Printf("  --  OK\n")
""		Skip back to the mark
"		exec "normal 'F"
"		redraw!
"	endfun
"endif
"" FoldLongLines() }}}
"
"" Function AutoLastMod() {{{
"" Provides atomatic change of date in files, if it is set via
"" modeline variable autolastmod to appropriate value.
""
"fun! AutoLastMod()
"if exists("g:autolastmod")
"	if g:autolastmod < 0
"		return 0;
"	elseif g:autolastmod == 1
"		call LastMod(g:autolastmodtext)
"	endif
"endif
"endfun
"" AutoLastMod() }}}
"
"" Function LastMod() {{{
"" Automatic change date in *.html files.
""
"fun! LastMod(text, ...)
"	mark d
"	let line = "\\1" . strftime("%Y %b %d %X") " text of changed line
"	let find = "g/" . a:text           " regexpr to find line
"	let matx = a:text . ".*"            " ...if line was found
"	exec find
"	let curr_line = getline(".")
"	if match(curr_line, matx) == 0
"		" call setline(line("."), line)
"		call setline(line("."), substitute(getline("."), matx, line, ""))
"		exec "'d"
"	endif
"endfun
"" LastMod() }}}
"
"" Function OpenAllWin() {{{
"" Opens windows for all files in the command line.
"" Variable "opened" is used for testing, if window for file was already opened
"" or not. This is prevention for repeat window opening after ViM config file
"" reload.
""
"fun! OpenAllWin()
"	let i = 0
"	if !exists("opened")
"		while i < argc() - 1
"			split
"			n
"			let i = i + 1
"		endwhile
"	endif
"	let opened = 1
"endfun
"
"if exists("g:open_all_win")
"	if g:open_all_win == 1
"		call OpenAllWin()
"	endif
"endif
"" OpenAllWin() }}}
"
"" Function CallProg() {{{
"fun! CallProg()
"	let choice = confirm("Call:", "&make\nm&ake in cwd\n" .
"						\ "&compile\nc&ompile in cwd\n" .
"						\ "&run\nr&un in cwd")
"	if choice == 1
"		exec ":wall"
"		exec "! cd %:p:h; pwd; make " . g:makeflags
"	elseif choice == 2
"		exec ":wall"
"		exec "! cd " .
"				\ getcwd() . "; pwd; make " . g:makeflags
"	elseif choice == 3
"		:call Compile(1)
"	elseif choice == 4
"		:call Compile(0)
"	elseif choice == 5
"		exec "! cd %:p:h; pwd; ./%:t:r"
"	elseif choice == 6
"		exec "! cd " . getcwd() . "; pwd; ./%<"
"	endif
"endfun
"" CallProg() }}}
"
"" Function Compile() {{{
"fun! Compile(do_chdir)
"	let cmd = ""
"	let filename = ""
"	let filename_ext = ""
"
"	if a:do_chdir == 1
"		let cmd = "! cd %:p:h; pwd; "
"		let filename = "%:t:r"
"		let filename_ext = "%:t"
"	else
"		let cmd = "! cd " . getcwd() . "; pwd; "
"		let filename = "%<"
"		let filename_ext = "%"
"	endif
"
"	let choice = confirm("Call:", 
"		\ "&compile\n" .
"		\ "compile and &debug\n" .
"		\ "compile and &run\n" .
"		\ "compile using first &line")
"
"	if choice != 0
"		exec ":wall"
"	endif
"
"	if choice == 1
"		exec cmd . "gcc " . g:cflags . 
"			\ " -o " . filename . " " . filename_ext
"	elseif choice == 2
"		exec cmd . "gcc " . g:cflags . " " . g:c_debug_flags . 
"			\ " -o " . filename . " " . filename_ext " && gdb " . filename
"	elseif choice == 3
"		exec cmd . "gcc " . g:cflags . 
"			\ " -o " . filename . " " . filename_ext " && ./" . filename
"	elseif choice == 4
"		exec cmd . "gcc " . g:cflags . 
"			\ " -o " . filename . " " . filename_ext . 
"			\ substitute(getline(2), "VIMGCC", "", "g")
"	endif
"endfun
"" Compile() }}}
"
"" Function Indent() {{{
"" Indents source code.
"fun! Indent()
"" If there is set equalprg to source indenting (ie. perltidy for perl sources)
"" we have not to executes "'f" at the end, else we will got "Mark not set"
"" error message.
"	if &equalprg == ""
"		exec "normal mfggvG$='f"
"	else
"		exec "normal mfggvG$="
"	endif
"endfun
"" Indent() }}}
"
"" Function UnquoteMailBody() {{{
""
"fun! UnquoteMailBody()
"" Every backslash character must be escaped in function -- Nepto
"	exec "normal :%s/^\\([ ]*>[ ]*\\)*\\(\\|[^>].*\\)$/\\2/g<CR>"
"endfun
"" UnquoteMailBody() }}}
"
"" Function SafeLineDelete() {{{
""
"fun! SafeLineDelete()
"	exec "normal \"_dd"
"endfun
"" SafeLineDelete() }}}
"
"" Function GetUID() {{{
"" - used in statusline.
"" If you are root, function return "# " string --> it is showed at begin of
""                                                  statusline
"" If you aren't root, function return empty string --> nothing is visible
"let g:get_id=""
"if executable("id")
"	" Check for your name ID
"	let g:get_id = $USER
"	" If you are root, set to '#', else set to ''
"	if g:get_id == "root"
"		let g:get_id = "# "
"	else
"		let g:get_id = ""
"	endif
"endif
"fun! GetUID()
"	return g:get_id
"endfun
"" GetUID() }}}
"
"" Function ReadFileAboveCursor() {{{
""
"fun! ReadFileAboveCursor(file, ...)
"	let str = ":" . (v:lnum - 1) . "read " . a:file
"	let idx = 1
"	while idx <= a:0
"		exec "let str = str . \" \" . a:" . idx
"		let idx = idx + 1
"	endwhile
"	exec str
"endfun
"" ReadFileAboveCursor() }}}
"
""
"" NextIndent()
""
"" Jump to the next or previous line that has the same level or a lower
"" level of indentation than the current line.
""
"" exclusive (bool):   true:  Motion is exclusive
""                     false: Motion is inclusive
"" fwd (bool):         true:  Go to next line
""                     false: Go to previous line
"" lowerlevel (bool):  true:  Go to line with lower indentation level
""                     false: Go to line with the same indentation level
"" skipblanks (bool):  true:  Skip blank lines
""                     false: Don't skip blank lines
"
"function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
"	let line = line('.')
"	let column = col('.')
"	let lastline = line('$')
"	let indent = indent(line)
"	let stepvalue = a:fwd ? 1 : -1
"
"	while (line > 0 && line <= lastline)
"		let line = line + stepvalue
"		if (	! a:lowerlevel && indent(line) == indent ||
"				\ a:lowerlevel && indent(line) < indent)
"			if (! a:skipblanks || strlen(getline(line)) > 0)
"				if (a:exclusive)
"					let line = line - stepvalue
"				endif
"				exe line
"				exe "normal " column . "|"
"				return
"			endif
"		endif
"	endwhile
"endfunc
"
"" }}}
"" Colors {{{
"
"set background=dark
""hi StatusLine   term=bold,reverse cterm=bold,reverse
""hi StatusLineNC term=reverse      cterm=reverse
""hi StatusLine   gui=bold          guifg=Black guibg=White
""hi StatusLineNC gui=bold,reverse  guifg=White guibg=Black
""hi User1 term=inverse,bold  cterm=inverse,bold ctermfg=Red
""hi User2 term=bold          cterm=bold         ctermfg=Yellow
""hi User3 term=inverse,bold  cterm=inverse,bold ctermfg=Blue
""hi User4 term=inverse,bold  cterm=inverse,bold ctermfg=LightBlue
""hi User5 term=inverse,bold  cterm=inverse,bold ctermfg=Red ctermbg=Green
""hi User1 gui=bold guifg=White     guibg=Red
""hi User2 gui=bold guifg=Yellow    guibg=Black
""hi User3 gui=bold guifg=Blue      guibg=White
""hi User4 gui=bold guifg=LightBlue guibg=White
""hi User5 gui=bold guifg=Green     guibg=Red
""hi Folded     term=standout cterm=bold ctermfg=4        ctermbg=Black
""hi FoldColumn term=standout            ctermfg=DarkBlue ctermbg=Black 
""hi Folded     gui=bold guibg=Black guifg=Blue
""hi FoldColumn          guibg=Black guifg=Blue
"
"" }}}
"" End {{{
"function FoldenableSync()
"    if(&foldcolumn!=0)
"        set foldenable
"    else 
"        set nofoldenable
"endif
"endfun
"
""autocmd Bufenter * call FoldenableSync()
""autocmd Syntax java syn region azFold1 start="/\*"  end="\*/" transparent fold keepend
""autocmd Syntax java syn clear javaBraces
""autocmd Syntax java syn region azFold2 start="{"  end="}" transparent fold
"
"
"syn sync fromstart
"" }}}
""}}}
"" Plugins {{{
"
"    " PIV {
"        let g:DisableAutoPHPFolding = 0
"        let g:PIVAutoClose = 0
"    " }
"
"    " Misc {
"        let g:NERDShutUp=1
"        let b:match_ignorecase = 1
"    " }
"
"
"    " Ctags {
"        set tags=./tags;/,~/.vimtags
"    " }
"
"    " EasyTags {
"        let g:easytags_cmd = 'ctags'
"    " }
"
"    " AutoCloseTag {
"        " Make it so AutoCloseTag works for xml and xhtml files as well
"        au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
"        nmap <Leader>ac <Plug>ToggleAutoCloseMappings
"    " }
"
"
"    " NerdTree {
"        map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
"        map <leader>e :NERDTreeFind<CR>
"        nmap <leader>nt :NERDTreeFind<CR>
"
"        let NERDTreeShowBookmarks=1
"        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
"        let NERDTreeChDirMode=0
"        let NERDTreeQuitOnOpen=1
"        let NERDTreeShowHidden=1
"        let NERDTreeKeepTreeInNewTab=1
"
"        function! NERDTreeInitAsNeeded()
"            redir => bufoutput
"            buffers!
"            redir END
"            let idx = stridx(bufoutput, "NERD_tree")
"            if idx > -1
"                NERDTreeMirror
"                NERDTreeFind
"                wincmd l
"            endif
"        endfunction
"    " }
"
"    " Tabularize {
"        if exists(":Tabularize")
"          nmap <Leader>a= :Tabularize /=<CR>
"          vmap <Leader>a= :Tabularize /=<CR>
"          nmap <Leader>a: :Tabularize /:<CR>
"          vmap <Leader>a: :Tabularize /:<CR>
"          nmap <Leader>a:: :Tabularize /:\zs<CR>
"          vmap <Leader>a:: :Tabularize /:\zs<CR>
"          nmap <Leader>a, :Tabularize /,<CR>
"          vmap <Leader>a, :Tabularize /,<CR>
"          nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
"          vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
"
"          " The following function automatically aligns when typing a
"          " supported character
"          inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
"
"          function! s:align()
"              let p = '^\s*|\s.*\s|\s*$'
"              if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
"                  let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
"                  let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
"                  Tabularize/|/l1
"                  normal! 0
"                  call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
"              endif
"          endfunction
"
"        endif
"     " }
"
"     " Session List {
"        set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
"        nmap <leader>sl :SessionList<CR>
"        nmap <leader>ss :SessionSave<CR>
"     " }
"
"     " Buffer explorer {
"        nmap <leader>b :BufExplorer<CR>
"     " }
"
"     " JSON {
"        nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
"     " }
"
"     " PyMode {
"        let g:pymode_lint_checker = "pyflakes"
"     " }
"
"     " ctrlp {
"        let g:ctrlp_working_path_mode = 2
"        nnoremap <silent> <D-t> :CtrlP<CR>
"        nnoremap <silent> <D-r> :CtrlPMRU<CR>
"        let g:ctrlp_custom_ignore = {
"            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
"            \ 'file': '\.exe$\|\.so$\|\.dll$' }
"     "}
"
"     " TagBar {
"        nnoremap <silent> <leader>tt :TagbarToggle<CR>
"     "}
"
"     " PythonMode {
"     " Disable if python support not present
"        if !has('python')
"           let g:pymode = 1
"        endif
"     " }
"
"     " Fugitive {
"        nnoremap <silent> <leader>gs :Gstatus<CR>
"        nnoremap <silent> <leader>gd :Gdiff<CR>
"        nnoremap <silent> <leader>gc :Gcommit<CR>
"        nnoremap <silent> <leader>gb :Gblame<CR>
"        nnoremap <silent> <leader>gl :Glog<CR>
"        nnoremap <silent> <leader>gp :Git push<CR>
"     "}
"
"
"" }}}
""Programming{{{
"" Settings for C language {{{
"let c_gnu=1
"let c_comment_strings=1
"let c_space_errors=1
"" Settings for gcc & make {{{
"let g:cflags="-Wall -pedantic"
"let g:c_debug_flags="-ggdb -DDEBUG"
"let g:makeflags=""
""}}}
"" }}}
"
"" Java specific stuff {{{
"let java_highlight_java_lang_ids=1
"let java_highlight_all=1
"let java_highlight_debug=1
"let java_highlight_functions="style"
"" }}}
" 
"" Settings for Perl {{{
"":make for perl
""set makeprg=perl\ -cw\ \%" 
""set efm=%A%f\ %l:%m,%A%.%#\ at\ %f\ line\ %l%m,%C%m
""}}}
""}}}
"" Keyboard Mappings {{{
"
"""" make alt-Fn mappings work in console as <leader>Fn {{{
""map <leader>OP <M-F1>
""map <leader>OQ <M-F2>
""map <leader>OR <M-F3>
""map <leader>OS <M-F4>
""map <leader>[15~ <M-F5>
""map <leader>[17~ <M-F6>
""map <leader>[18~ <M-F7>
""map <leader>[19~ <M-F8>
""map <leader>[20~ <M-F9>
""map <leader>[21~ <M-F10>
""map <leader>[23~ <M-F11>
""map <leader>[24~ <M-F12>
""imap <leader>OP <M-F1>
""imap <leader>OQ <M-F2>
""imap <leader>OR <M-F3>
""imap <leader>OS <M-F4>
""imap <leader>[15~ <M-F5>
""imap <leader>[17~ <M-F6>
""imap <leader>[18~ <M-F7>
""imap <leader>[19~ <M-F8>
""imap <leader>[20~ <M-F9>
""imap <leader>[21~ <M-F10>
""imap <leader>[23~ <M-F11>
""imap <leader>[24~ <M-F12>
"" }}}
"
"
"" Control mappings {{{
"
"" start of line
"inoremap <C-A>		<Home>
"cnoremap <C-A>		<Home>
"" end of line
"cnoremap <C-E>		<End>
"inoremap <C-E>		<End>
"
"" Switching between windows by pressing one time CTRL-X or CTRL-Tab keys.
"noremap <C-X> <C-W>w
"map  <C-Tab> <C-W>w
"imap <C-Tab> <C-O><C-W>w
"cmap <C-Tab> <C-C><C-Tab>
"
"" Make Insert-mode completion more convenient:
"imap <C-L> <C-X><C-L>
"
"set remap
"map <C-O><C-O> :split 
"imap <C-O><C-O> <Esc>:split 
"
"" Open new window with the file ~/.zshrc (my shell configuration file)
"map <C-O><C-T> :split ~/.zshrc<CR>
"imap <C-O><C-T> <Esc>:split ~/.zshrc<CR>
"
"" Open new window with file ~/.vimrc (ViM configuration file)
"map <C-O><C-K> :split ~/.vim/vimrc<CR>
"imap <C-O><C-K> <Esc>:split ~/.vim/vimrc<CR>
"" Open new window with dir ~/.vim (ViM configuration dir)
"map <C-O><C-V> :split ~/.vim<CR>
"imap <C-O><C-V> <Esc>:split ~/.vim<CR>
"
""mappings to scroll alternate window
"nmap <silent> <C-j> :call ScrollOtherWindow("down")<CR>
"nmap <silent> <C-k> :call ScrollOtherWindow("up")<CR>
"
"" mappings for winmanager
"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
"map <c-w><c-t> :WMToggle<cr>
"
"" }}}
"
"" <Leader> mappings {{{
"
"" Eng/rus mappings {{{
"map <Leader>rus !}tr "\`qwertyuiop[]asdfghjkl;'zxcvbnm,.~@\#$\%^&*QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>" "£ÊÃÕËÅÎÇÛÝÚÈßÆÙ×ÁÐÒÏÌÄÖÜÑÞÓÍÉÔØÂÀ³\"\'*:,.;êãõëåHçûýúèÿæù÷áðòïìäöüñþóíéôøâà"<CR>
"map <Leader>eng !}tr "£ÊÃÕËÅÎÇÛÝÚÈßÆÙ×ÁÐÒÏÌÄÖÜÑÞÓÍÉÔØÂÀ³\"\'*:,.;êãõëåHçûýúèÿæù÷áðòïìäöüñþóíéôøâà" "\`qwertyuiop[]asdfghjkl;'zxcvbnm,.~@\#$\%^&*QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>"<CR>
"" }}}
"
"map <Leader>mk :w<CR>make<CR>
"
"map <Leader>me :emenu <C-Z>
"
"map <Leader>ss :syntax sync fromstart<CR>
"nmap <Leader>sy :if has("syntax_items")<CR>syntax off<CR>else<CR>syntax on<CR>endif<CR><CR>
"
"map <Leader>hl :nohlsearch<CR>
"
"map <Leader>li :set list! list?<CR>
"
"map <Leader>cv :!cvs2cl --fsf -t<CR>:!cvs2html -p -C changelog.html -o cvs/index.html -v<CR>
"
"map <Leader>asp :!aspell --dont-backup check %<CR>
"map <Leader>isp :!ispell -x %<CR>
"
"map <Leader>sh :so ~/.vim/vimsh.vim<CR>
"
"map <Leader>wr :set wrap! wrap?<CR>
"
"map <Leader>nu :set number! number?<CR>
"
""" search the current word in all files in the working directory
"map <Leader>x yaw:grep <C-R>" *<CR>
"
"map <Leader>mx :!chmod +x %<CR>
"
""paste toggling
"map <Leader>pa :set paste! paste?<CR>
"
""foldcolumn toggle
"map <Leader>fco :set foldcolumn=3<CR>
"map <Leader>fcc :set foldcolumn=0<CR>
"
""select foldmethod
"map <Leader>zm :call ChangeFoldMethod()<CR>
"
""toggle foldopen
"map <Leader>zo :call ToggleFoldOpen()<CR>
"
""toggle foldopen
"map <Leader>zc :call ToggleFoldClose()<CR>
"
"noremap zi :call ToggleFoldColumn()<CR>zi
"map <leader>zi :set foldenable! foldenable?<CR>
"
""dict mapping
""map <Leader>d :let word=expand("<cword>")<CR><C-w>w:exec "0r! dict " . word<CR>i<CR><Esc>50i-<Esc>gg<C-w>w
"map <Leader>d :let word=expand("<cword>")<CR>ea<CR><Esc><Up>:exec "r! echo " . word<CR>$a{{{<Esc>:exec "r! dict " . word<CR>i}}}<Esc>[{zc
"
"" scrolloff toggling
"map <Leader>son :set scrolloff=999<CR>
"map <Leader>sof :set scrolloff=0<CR>
"
"" }}}
"
"" Mappings for folding {{{
"" Open one foldlevel of folds in whole file
"" Note: 'Z' works like 'z' but for all lines in file
"noremap Zo mzggvGzo'z
"noremap ZO mzggvGzO'z " same as 'zR' 
"noremap Zc mzggvGzc'z
"noremap ZC mzggvGzC'z
"noremap Zd mzggvGzd'z
"noremap ZD mzggvGzD'z
"noremap Za mzggvGza'z
"noremap ZA mzggvGzA'z
"noremap Zx mzggvGzx'z
"noremap ZX mzggvGzX'z
"
"" }}}
"
"" Imod mappings {{{
""To enable viewing messages from commands issued using the mappings presented
""here
""set cmdheight=2
"
"imap  <C-O>
""The fundamental mapping that makes full-screen editing possible
""inoremap o <C-o>
""imap ; <C-o>:
"
""Basic motions
""imap h <Left>
""imap j <Down>
""imap k <Up>
""imap l <Right>
""imap f <PageDown>
""imap b <PageUp>
""imap 6 <Home>
""imap 4 <End>
"
""Numbers for repeats
""imap 1 <C-o>1
""imap 2 <C-o>2
""imap 3 <C-o>3
""imap 4 <C-o>4
""imap 5 <C-o>5
""imap 6 <C-o>6
""imap 7 <C-o>7
""imap 8 <C-o>8
""imap 9 <C-o>9
"
""Basic searches
""imap / <C-o>/
""imap 8 <C-o>*
""imap 3  <C-o>#
""imap n <C-o>n
""imap N <C-o>N
"
""Deleting
""imap x <C-o>x
""imap d <C-o>d
""imap D <C-o>D
"
""Yanking and putting
""imap y <C-o>y
""imap Y  <C-o>Y
""imap p <C-o>p
""imap P <C-o>P
"
""Common prefixes:  marking, matching etc.
""imap ~  <C-o>~
""imap m  <C-o>m
""imap `  <C-o>`
""imap "  <C-o>"
""imap %  <C-o>%
""imap H  <C-o>:h
""imap s  <C-o>:s
"
""Interacting with the 'outside'
""imap !  <C-o>:!
""imap w  <C-o>:w<CR>
""imap e  <C-o>:e
"
""Other commands
""imap u  <C-o>u
""imap .  <C-o>. 
"" }}}
" 
"" GUI Imod mappings {{{
""To enable viewing messages from commands issued using the mappings presented
""here
""set cmdheight=2
"
""The fundamental mapping that makes full-screen editing possible
""inoremap <M-o> <C-o>
""imap <M-;> <C-o>:
"
""Basic motions
""imap <M-h> <Left>
""imap <M-j> <Down>
""imap <M-k> <Up>
""imap <M-l> <Right>
""imap <M-f> <PageDown>
""imap <M-b> <PageUp>
""imap <M-6> <Home>
""imap <M-4> <End>
"
""Numbers for repeats
""imap <M-1> <C-o>1
""imap <M-2> <C-o>2
""imap <M-3> <C-o>3
""imap <M-4> <C-o>4
""imap <M-5> <C-o>5
""imap <M-6> <C-o>6
""imap <M-7> <C-o>7
""imap <M-8> <C-o>8
""imap <M-9> <C-o>9
"
""Basic searches
""imap <M-/> <C-o>/
""imap <M-8> <C-o>*
""imap <M-3>  <C-o>#
""imap <M-n> <C-o>n
""imap <M-N> <C-o>N
""
""Deleting
""imap <M-x> <C-o>x
""imap <M-d> <C-o>d
""imap <M-D> <C-o>D
"
""Yanking and putting
""imap <M-y> <C-o>y
""imap <M-Y>  <C-o>Y
""imap <M-p> <C-o>p
""imap <M-P> <C-o>P
"
""Common prefixes:  marking, matching etc.
""imap <M-~>  <C-o>~
""imap <M-m>  <C-o>m
""imap <M-`>  <C-o>`
""imap <M-">  <C-o>"
""imap <M-%>  <C-o>%
""imap <M-H>  <C-o>:h
""imap <M-s>  <C-o>:s
"
""Interacting with the 'outside'
""imap <M-!>  <C-o>:!
""imap <M-w>  <C-o>:w<CR>
""imap <M-e>  <C-o>:e
"
"""Other commands
""imap <M-u>  <C-o>u
""imap <M-.>  <C-o>. 
"" }}}
"
"" {{{ Make command lines editable, with history, as in Emacs:
"cno <C-a>  <Home>
"cno <C-b>  <Left>
""cno <C-d>  <Delete>
"cno <C-e>  <End>
"cno <C-f>  <Right>
"cno <C-g>  <C-c>
"cno <Esc>b <C-Left>
"cno <Esc>f <C-Right>
"cno <Esc>p <Up>
"cno <Esc>n <Down>
""}}}
"
"" Misc {{{
"
""call BuildHelp("vimrc"," Y : yank till the end of the line")
""  noremap Y y$
"
""call BuildHelp("vimrc"," Make 'gf' rebound to last cursor position (line *and* column)")
""  noremap gf gf`"
"
""call BuildHelp("vimrc"," The command {number}CTRL-G show the current nuffer number, too.")
"" This is yet another feature that vi does not have.
"" As I always want to see the buffer number I map it to CTRL-G.
"" Pleae note that here we need to prevent a loop in the mapping by
"" using the comamnd "noremap"!
"  noremap <C-G> 2<C-G>
"  
"" move by visible lines
"map <Up> gk
"imap <Up> <C-O>gk
"map <Down> gj
"imap <Down> <C-O>gj
"
"" Make tab in v mode work like I think it should (keep highlighting):
"vmap <tab> >gv
"vmap <s-tab> <gv
"
"" Jump to the tag associated with current word.  If more than one match is
"" found, display list of matching tags.
"" inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
"" inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
"
"" Search for the current Visual selection.
"vmap S y/<C-R>=escape(@",'/\')<CR>
"
"
""dircd
"map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
"map ,cd :exe 'cd ' . expand ("%:p:h")<CR>
"
""zope
""map <Leader>Z :ZopeCOMMANDS<CR>
"
"" Moving back and forth between lines of same or lower indentation.
"nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<cr>
"nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<cr>
"nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<cr>
"nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<cr>
"vnoremap <silent> [l <esc>:call NextIndent(0, 0, 0, 1)<cr>m'gv''
"vnoremap <silent> ]l <esc>:call NextIndent(0, 1, 0, 1)<cr>m'gv''
"vnoremap <silent> [L <esc>:call NextIndent(0, 0, 1, 1)<cr>m'gv''
"vnoremap <silent> ]L <esc>:call NextIndent(0, 1, 1, 1)<cr>m'gv''
"onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<cr>
"onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<cr>
"onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<cr>
"onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<cr>
"
"
"vnoremap > ><CR>gv
"vnoremap < <<CR>gv
"
""Space acts as pageDown
"map <Space> <PageDown>
"let Flist_Key = '\fl'
""let Flist_Ctags_Cmd = '/usr/bin/ctags'
"
"" }}}
""}}}
"" Key (re)Mappings {{{
"
"
"    " Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
"    nnoremap ; :
"
"    " Easier moving in tabs and windows
"    map <C-J> <C-W>j<C-W>_
"    map <C-K> <C-W>k<C-W>_
"    map <C-L> <C-W>l<C-W>_
"    map <C-H> <C-W>h<C-W>_
"
"    " Wrapped lines goes down/up to next row, rather than next line in file.
"    nnoremap j gj
"    nnoremap k gk
"
"    " The following two lines conflict with moving to top and bottom of the
"    " screen
"    " If you prefer that functionality, comment them out.
"    map <S-H> gT
"    map <S-L> gt
"
"    " Stupid shift key fixes
"    cmap W w
"    cmap WQ wq
"    cmap wQ wq
"    cmap Q q
"    cmap Tabe tabe
"
"    " Yank from the cursor to the end of the line, to be consistent with C and D.
"    nnoremap Y y$
"
"    """ Code folding options
"    nmap <leader>f0 :set foldlevel=0<CR>
"    nmap <leader>f1 :set foldlevel=1<CR>
"    nmap <leader>f2 :set foldlevel=2<CR>
"    nmap <leader>f3 :set foldlevel=3<CR>
"    nmap <leader>f4 :set foldlevel=4<CR>
"    nmap <leader>f5 :set foldlevel=5<CR>
"    nmap <leader>f6 :set foldlevel=6<CR>
"    nmap <leader>f7 :set foldlevel=7<CR>
"    nmap <leader>f8 :set foldlevel=8<CR>
"    nmap <leader>f9 :set foldlevel=9<CR>
"
"    "clearing highlighted search
"    nmap <silent> <leader>/ :nohlsearch<CR>
"
"    " Shortcuts
"    " Change Working Directory to that of the current file
"    cmap cwd lcd %:p:h
"    cmap cd. lcd %:p:h
"
"    " visual shifting (does not exit Visual mode)
"    vnoremap < <gv
"    vnoremap > >gv
"
"    " Fix home and end keybindings for screen, particularly on mac
"    " - for some reason this fixes the arrow keys too. huh.
"    map [F $
"    imap [F $
"    map [H g0
"    imap [H g0
"
"    " For when you forget to sudo.. Really Write the file.
"    cmap w!! w !sudo tee % >/dev/null
"
"    " Some helpers to edit mode
"    " http://vimcasts.org/e/14
"    cnoremap %% <C-R>=expand('%:h').'/'<cr>
"    map <leader>ew :e %%
"    map <leader>es :sp %%
"    map <leader>ev :vsp %%
"    map <leader>et :tabe %%
"
"    " Adjust viewports to the same size
"    map <Leader>= <C-w>=
"" }}}
"" }}}
" vim: set foldlevel=0 foldmethod=marker :
