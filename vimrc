set nocompatible  " be iMproved, required
filetype off      " required
set background=dark


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'derekwyatt/vim-scala'
Bundle 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'marijnh/tern_for_vim'
Plugin 'niklasl/vim-rdf'
Plugin 'pangloss/vim-javascript'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable " Enable syntax highlighting
colorscheme jellybeans
set guifont=Source\ Code\ Pro\ 12
set number " Line numbers on

" For HTML indentation
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Remap leader key
let mapleader=','

" Airline settings
set laststatus=2
let g:airline_powerline_fonts=1

set expandtab "Use spaces instead of tabs
set tabstop=4 "Insert 4 spaces
set shiftwidth=4 "Ident 4 spaces

set nobackup
set nowritebackup
set backupdir=~/.vim/temp,.
set directory=~/.vim/temp,.
