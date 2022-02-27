"{ Builtin variables
" Custom mapping <leader> (see: `:h mapleader` for more info)
let g:mapleader = ' '

" Disable Python2 support
let g:loaded_python_provider = 0

" Disable perl provider
let g:loaded_perl_provider = 0

" Disable ruby provider
let g:loaded_ruby_provider = 0

" Do not load menu
let g:did_install_default_menus = 1

" Path to Python 3 interpreter (must be an absolute path), make startup
" faster. See https://neovim.io/doc/user/provider.html
let g:python3_host_prog = '~/.nvimenv/bin/python'

" Enable highlighting for lua HERE doc inside vim script
let g:vimsyn_embed = 'l'

" Use English as main language
language en_US.utf-8
"}

"{ Plugin Installation
call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'morhetz/gruvbox'

" css3 syntax highlight
Plug 'hail2u/vim-css3-syntax'

" less syntax highlight
Plug 'groenewege/vim-less'

" file tree
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" commenting text
Plug 'tpope/vim-commentary'

" git wrapper
Plug 'tpope/vim-fugitive'

" Syntax highlight for .tsx
Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }

" Syntax highlight for .ts
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" Syntax hightlight for .jsx
Plug 'mxw/vim-jsx'

" Syntax hightlight for .js
Plug 'pangloss/vim-javascript'

" Show indentation
Plug 'Yggdroot/indentLine'

" Svelte support
Plug 'evanleck/vim-svelte'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/emmet-vim'

call plug#end()
"}
