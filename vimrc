set nocompatible

call pathogen#infect()
set t_Co=256
syntax on
"let g:solarized_termcolors=256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
syntax enable
"set background=dark
colorscheme desert256
filetype plugin indent on

"Hopefully ctags
set tags=~/tags;/
map <c-g> :RopeGotoDefinition<CR>

"Pastebinit!!
map <leader>pb :w !pastebinit -<CR>

"Default explorer will behave more like NERDTree
let g:netrw_liststyle=3 " Use tree-mode as default view

" Can be typed even faster than jj.
imap jj <Esc>

"MRU awesomeness
let MRU_Max_Entries = 1000
map <leader>o :MRU<CR>

"Highlight lines if they're over 80 chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"Highlight lines if they're over 80 chars
if exists('+colorcolumn')
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Open new tab the browser way
map <c-t> :tabe

"CommandT stuff
let g:CommandTMaxFiles=100000

"Code folding. za
set foldmethod=indent
set foldlevel=99

"Drop a debugger FUCK IT!
ab fuckit import ipdb; ipdb.set_trace()

"Stop caring about compiled crap
set wildignore+=*.o,*.obj,.git,*.pyc,*templates/*.py,#*#,build/*

"Easy window moves
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set list
set listchars=tab:⇥·,trail:· "display invisible chars
match Error /\v\s+$/         "Trailing spaces in red

set ai                      " always set autoindenting on
set autowrite               " Autosave before commands like :next and :make
set textwidth=0             " Don't wrap words by default
set showcmd                 " Show (partial) command in status line.
set encoding=utf-8          " This being the 21st century, I use Unicode
set fileencoding=utf-8

set showmatch               " Show matching brackets.
set ignorecase              " Case insensitive matching
set smartcase               " Case sensitive matching if caps in search string
set hlsearch                " Highlight search matches

set wildmenu                " Use BASH style completion
set wildmode=list:longest,full

set scrolloff=3             " leave more context around cursor
set number					" Line numbering
set history=5000            " Keep 5000 lines of command line history

"set ruler                   " Show the cursor position all the time
set title                   " Show title in title bar
set cursorline              " Highlight the current line

set noexpandtab				" in python, we use real tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4

"sick tab
map = gt
map - gT

set incsearch

set nohidden				" do not keep buffer after tab closed

"set default split opening position to be below and to the right of currently active split
set splitbelow
set splitright


"move around more like a normal editor
nnoremap j gj
nnoremap k gk
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

"window switching: ctrl+[hjkl]
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-Q> <C-W>q

" be smarter about multiple buffers / vim instances
"quick buffer switching with TAB, even with edited files
set hidden
nmap <TAB> :bn<CR>
nmap <S-TAB> :bp<CR>
set autoread            "auto-reload files, if there's no conflict
set shortmess+=IA       "no intro message, no swap-file message

" tkdiff-like bindings for vimdiff {
    if &diff
        "next match
        nnoremap m ]cz.
        "previous match
        nnoremap M [cz.
        "refresh the diff
        nnoremap R :w\|set nodiff\|set diff<cr>
        "quit, both panes
        nnoremap q :qall<cr>
    endif
" }
