"
" Plamen's .vimrc
"

" Disable vi compatibility mode
set nocompatible

" How many lines of history vim remembers
set history=1000

" Filetype plugins
filetype plugin on
filetype indent on

" Refresh a file when it is changed from the outside
set autoread

" Productivity
nnoremap ; :
vnoremap ; :

map <F2> :NERDTreeToggle<CR>

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

" Annoying piece of crap sounds OFF
set noerrorbells
set novisualbell
set t_vb=

" Syntax highlighting
syntax enable

" 256 color mode
set t_Co=256

" Standard encoding
set encoding=utf-8

set nobackup
set nowb
set noswapfile

" Replace tabs with spaces
set expandtab

" Much smart
set smarttab

" A tab is 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak at 500 chars
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap

" Required for vundle
filetype off

" Add vundle to the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'pangloss/vim-javascript'
call vundle#end()

" Enable vim-airline
set laststatus=2

" Populate g:airline_symbols dictionary
let g:airline_powerline_fonts = 1

" Restore
filetype plugin indent on

"""
" Syntastic
"""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_checkers = ['eslint']

" Solarized
set background=dark
colorscheme solarized

cnoreabbrev Ut UpdateTags
