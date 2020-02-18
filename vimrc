"++++++++++++++++++
"++ Essentials ++++
"++++++++++++++++++

"Terminal and VIM compatibility
set nocompatible
set t_Co=256

"Syntax highlighting
syntax on
syntax enable
filetype plugin indent on

"Disables Syntastic for HTML files. Too many edge cases
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"Who doesn't want line numbers?
set number

"Spell checking
"zg to add to dictionary
"z= for suggestions
"set spell spelllang=en_us

"Ctrl+P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"++++++++++++++++++++
"++ Load plugins ++++
"++++++++++++++++++++

"Pathogen (https://github.com/tpope/vim-pathogen)
call pathogen#infect()


"++++++++++++++++
"++ Mappings ++++
"++++++++++++++++

"Default explorer will behave more like NERDTree
let g:netrw_liststyle=3 " Use tree-mode as default view

" jj can be type faster than <Esc>
imap jj <Esc>

map <leader>o :MRU<CR>

"Easy window moves
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Easy 'big' moves
map J 10j
map K 10k
map L 10l
map H 10h

"Window switching: ctrl+[hjkl]
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-Q> <C-W>q

"Sick tab
map = gt
map - gT

"Move around more like a normal editor
nnoremap j gj
nnoremap k gk

".vimrc auto source
nnoremap <Leader>sv :so $MYVIMRC<CR>

"shortcut to edit .vimrc and .bash_profile
noremap <Leader>v :tabe ~/.vimrc<CR>
noremap <Leader>V :tabe ~/.bashrc<CR>

"<Ctrl+b> + buffer number or name fragment to jump to it
map <C-b> :ls<cr>:b<space>

"Tight interaction between vim and tmux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
"Bundle Exec Rspec <current file>
map <Leader>ber :call VimuxRunCommand("clear; bundle exec rspec " . bufname("%"))<CR>

"++++++++++++++
"++ Visual ++++
"++++++++++++++

"Solarized color scheme (https://github.com/altercation/vim-colors-solarized)
"let g:solarized_termcolors=256
"let g:solarized_visibility = "high" "Could be low, normal or high
"let g:solarized_contrast = "high"
"set background=dark
"colorscheme solarized

colorscheme slate

" This shows what you are typing as a command. Awesome.
set showcmd

"Highlight lines if they're over 80 chars. New way. (VIM > 7.2)
if exists('+colorcolumn')
  highlight ColorColumn ctermbg=8
  set colorcolumn=80
endif

"Highlight lines if they're over 80 chars. Old way.
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"Show the cursor position all the time
set ruler

"Show title in title bar
set title

"Highlight the current line
set cursorline

" Makes the current line stand out with bold and in the numberline
hi CursorLine cterm=bold
hi LineNr cterm=bold ctermfg=0 ctermbg=none

"display invisible chars
set list
set listchars=tab:⇥·,trail:·

"Trailing spaces in red
match Error /\v\s+$/

" Show (partial) command in status line.
set showcmd


"++++++++++++
"++ Code ++++
"++++++++++++

" This being the 21st century, I use Unicode
set encoding=utf-8
set fileencoding=utf-8

" Show matching brackets.
set showmatch

" always set autoindenting on
set ai

" Don't wrap words by default
set textwidth=0

"Filetype adjustments
autocmd BufEnter *.md setlocal filetype=markdown
autocmd BufEnter *.css.tmpl setlocal filetype=css
autocmd BufEnter *.js.tmpl setlocal filetype=javascript
autocmd BufEnter *.html.eco setlocal filetype=html


"++++++++++++++
"++ Search ++++
"++++++++++++++

" Case insensitive matching
set ignorecase

" Case sensitive matching if caps in search string
set smartcase

" Search on steroids
set hlsearch
set incsearch

" Use BASH style completion
set wildmenu
set wildmode=list:longest,full

" Set grep to be git grep
set grepprg=git\ grep\ -n

" The <Left>s are here to place the cursor where the patterns needs to go
noremap <leader>g :grep! <cword>\| copen<Left><Left><Left><Left><Left><Left><Left>

"++++++++++++++++++++
"++ Indentation! ++++
"++++++++++++++++++++

set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4


"+++++++++++++
"++ Misc. ++++
"+++++++++++++

"MRU awesomeness
let MRU_Max_Entries = 1000

"Keep 10,000 lines of command line history. You cannot have enough.
set history=10000

"Save the Marks. All of them.
set viminfo='1000,f1

"Default split opening position shall be to the right and below
set splitright
set splitbelow

"Auto-reload files, if there's no conflict
set autoread

"Do not keep buffer after tab closed
set nohidden

"no intro message, no swap-file message
set shortmess+=IA

" leave more context around cursor
set scrolloff=3

set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

"Code folding. za
"set foldmethod=indent
"set foldlevel=99

"Manual folds, backed up and restored
set foldmethod=manual

"Hopefully ctags

"Easy debugging
ab pdb import pdb; pdb.set_trace()
ab pry require 'pry'; binding.pry

"Python & most languages
set softtabstop=4
set tabstop=4
set shiftwidth=4

"For frontend stuff the convention is 2 spaces
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Ruby/Java are also 2 spaces
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType java setlocal shiftwidth=2 tabstop=2 softtabstop=2

"Go indentation (tabs)
autocmd FileType go set expandtab!

"Stop caring about compiled crap
set wildignore+=*.o,*.obj
"Ignore VCS internals
set wildignore+=.git,.hg
"Python projects
set wildignore+=*.pyc,*templates/*.py,#*#,build/*
"JavaScript projects
set wildignore+=node_modules/*
"Ruby project
set wildignore+=tmp
