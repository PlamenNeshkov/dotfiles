""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plamen's .vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable vi compatibility mode
set nocompatible

" How many lines of history vim remembers
set history=1000

" Filetype plugins
filetype plugin on
filetype indent on

" Refresh a file when it is changed from the outside
set autoread

" Extra key combinations
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" USER INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show line numbers
set number

" Number of context lines around the cursor
set scrolloff=7

" Turn on wildmenu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Show current position
set ruler

" Command bar height
set cmdheight=1

" Hide buffers when abandoned
set hidden

" Restore normal backspace behaviour
set backspace=eol,start,indent

" Automatically wrap left and right
set whichwrap+=<,>,h,l,[,]

" More sensible case behaviour when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Incremental search like in a browser
set incsearch

" Don't redraw when executing macros
set lazyredraw

" Faster redrawing
set ttyfast

" Magic setting ;)
set magic

" Show matching brackets
set showmatch

" How often to blink when showing matching brackets
set mat=2

" Annoying piece of crap sounds OFF
set noerrorbells
set novisualbell
set t_vb=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS AND FONTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting
syntax enable

" 256 color mode
set t_Co=256

" Standard encoding
set encoding=utf-8

" Use unix as standard filetype
set ffs=unix,dos,mac


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BACKUP AND UNDO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable any file history
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAB AND INDENT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Replace tabs with spaces
set expandtab

" Much smart
set smarttab

" A tab is 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak at 500 chars
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Required for vundle
filetype off

" Add vundle to the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
call vundle#end()

" Enable vim-airline
set laststatus=2

" Populate g:airline_symbols dictionary
let g:airline_powerline_fonts = 1

" Restore
filetype plugin indent on
