set nocompatible        " don't try to be VI compatible

"next line help plugins load corretly when it is turned back on beloj
filetype off
"TODO: Load plugins here (pathogen or vundle)
filetype plugin indent on

let mapleader=","       " defin leader key

" 
" Colors
set t_Co=256
colorscheme molokai     " set colorscheme
set colorcolumn=80      " set vertical guide
"highlight ColorColumn ctermbg=238 guibg=#23272

syntax on               " enable syntax processing

" Spaces and tabs
set wrap                " wrap long lines onto onto next screen line
set textwidth=0         " max width of inserted text (longer text is brokean at whitespace)
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " controls indent size
set expandtab           " replace tabs with spaces
set noshiftround        " do not round index to multiple of shiftwidth
" set formatoptions=tcqrn1

" file type specific tab settings
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype css  setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType make setlocal noexpandtab

set list
" set listchars=tab:>-
set listchars=eol:$,tab:>-,extends:>,precedes:<

" UI Config
set ttyfast             " indicates a fast terminal connection
set showmode            " show mode
set showcmd             " show command in bottom bar
set title               " show filename
set number              " show line numbers
set cursorline          " highlight current line
set ruler               " show file stats
set hidden              " allow switching buffers without writing old buffer
set modelines=0         " disabled to improve security
set encoding=utf-8      " set encoding inside VIM to utf-8
set ffs=unix,dos,mac    " detect end-of-line character(s) for these systems
set scrolloff=3         " min lines from curser to top/bottom of screen
set matchpairs+=<:>     " use % to jump between pairs
set laststatus=1        " show status line if there is more than one window
set showmatch           " show matching bracket if on screen
set autoindent          " when opening new line, keep same indent current line
" set undofile

"Allow backspacing over indent, line breaks, and start of insert
set backspace=indent,eol,start

inoremap jk <Esc>       " Remap escape
filetype indent on      " load filetype-specific indent files

" history and undo options
set undolevels=1000     " number of changes that can be undone
"
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case
set smartcase           " no ignorecase if search pattern has upper-case character

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " max 10 nexted folds
set foldmethod=indent   " fold based on  indent level
nnoremap <space> za     " space opens/closes folds


