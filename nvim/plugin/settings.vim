" Show line number
set number

" Show relative numbers
set relativenumber

" Allow backspacing over everything in insert mode
" on some systems backspace or delete keys doesn't work
set backspace=indent,eol,start

" Show the cursor position
set ruler

" Don't show extra info at the end of command line
set showcmd

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set lazyredraw

" Indentation
set autoindent

" Set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Always use spaces instead of tabs
set splitbelow
set splitright

" Better search
set hlsearch
set incsearch

" Ignore case in search
set ignorecase
set smartcase

" User silver search for speed
" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

" Don't wrap lines
set wrap
" Wrap lines at convenient points
set linebreak

" Show line breaks
let &showbreak='↳ '

" Reduce Command timeout for faster escape and 0
set timeoutlen=1000 ttimeoutlen=0

" Disable mouse scrolling
set mouse=a

" Dark background
set background=dark

" Set faster redrawing
set ttyfast

" Vimdiff should always be vertical
set diffopt+=vertical

" Enable syntax highlight
syntax on

" Make indentation based on filetype
filetype plugin indent on

"{ Netrw settings
" Change netrw directory view
let g:netrw_liststyle = 3

" Directory banner
let g:netrw_banner = 0

" Change how files are opened
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
" let g:netrw_browse_split = 2

"}
