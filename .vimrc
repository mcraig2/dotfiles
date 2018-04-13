" Basic stuff
syntax on
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set visualbell
set t_vb=
set mouse=a
set number
set shiftwidth=4
set softtabstop=4
set expandtab
set autoread
set clipboard=unnamed
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
inoremap jj <Esc>

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on

" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
" colorscheme solarized
colorscheme parsec

" Powerline stuff
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set guifont=Inconsolata\ for\ Powerline:15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-9

" NERDTree mappings
map <Leader>n :NERDTreeToggle<CR>

" This will allow you to paste a yank multiple times
" without having to reselect it.
xnoremap p pgvy

" Make it so that :W maps to :w because I ALWAYS DO THIS
cnoreabbrev W w

" autocmd BufWritePost *.py call Flake8()
" match ErrorMsg '\%>79v.\+'
