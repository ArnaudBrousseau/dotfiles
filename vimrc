set nocompatible

"Install pathogen first: https://github.com/tpope/vim-pathogen
"call pathogen#infect()

set t_Co=256
syntax on
syntax enable

"Install solarized color scheme:
"https://github.com/altercation/vim-colors-solarized
"let g:solarized_termcolors=256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"set background=dark
colorscheme desert256

filetype plugin indent on

"Hopefully ctags (work-related)
"set tags=~/tags;/
"map <c-g> :RopeGotoDefinition<CR>

"Pastebinit!! (work-related)
"map <leader>pb :w !pastebinit -<CR>

"Default explorer will behave more like NERDTree
let g:netrw_liststyle=3 " Use tree-mode as default view

" jj can be type faster than <Esc>
imap jj <Esc>

"MRU awesomeness
let MRU_Max_Entries = 1000
map <leader>o :MRU<CR>

"Highlight lines if they're over 80 chars. If you're in VIM <= 7.2
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"Highlight lines if they're over 80 chars (VIM > 7.2)
if exists('+colorcolumn')
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Open new tab the browser way
map <c-t> :tabe

"CommandT stuff (https://github.com/wincent/Command-T)
"let g:CommandTMaxFiles=100000

"Code folding. za
set foldmethod=indent
set foldlevel=99

"Drop a debugger FUCK IT! (work-related)
"ab fuckit import ipdb; ipdb.set_trace()

"Stop caring about compiled crap (work-related)
"set wildignore+=*.o,*.obj,.git,*.pyc,*templates/*.py,#*#,build/*

"Easy window moves
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set list
"display invisible chars
set listchars=tab:⇥·,trail:·

"Trailing spaces in red
match Error /\v\s+$/

" always set autoindenting on
set ai

" Autosave before commands like :next and :make
set autowrite

" Don't wrap words by default
set textwidth=0

" Show (partial) command in status line.
set showcmd

" This being the 21st century, I use Unicode
set encoding=utf-8
set fileencoding=utf-8

" Show matching brackets.
set showmatch
" Case insensitive matching
set ignorecase
" Case sensitive matching if caps in search string
set smartcase
" Highlight search matches
set hlsearch

" Use BASH style completion
set wildmenu
set wildmode=list:longest,full

" leave more context around cursor
set scrolloff=3

" Line numbering
set number

"Keep 5000 lines of command line history
set history=5000


"Show the cursor position all the time
"set ruler

"Show title in title bar
set title

"Highlight the current line
set cursorline

"This is Yelp's style
"set noexpandtab
"set softtabstop=4
"set tabstop=4
"set shiftwidth=4

"This is my style
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

"sick tab
map = gt
map - gT

set incsearch

" do not keep buffer after tab closed
set nohidden

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

"Be smarter about multiple buffers / vim instances
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
