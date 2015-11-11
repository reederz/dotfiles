set nocompatible  " be iMproved, required
filetype off      " required
set background=dark


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gmarik/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'marijnh/tern_for_vim'
Plugin 'niklasl/vim-rdf'
Plugin 'pangloss/vim-javascript'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'gertjanreynaert/cobalt2-vim-theme'

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
colorscheme cobalt2
set guifont=Source\ Code\ Pro\ 12
set number " Line numbers on

set clipboard=unnamedplus

" Indentanion overrides 
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Remap leader key
let mapleader=','

" Setup some default ignores for ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|cover|node_modules|bower_components|venv|dist)$',
  \ 'file': '\v\.(exe|pyc|jar|so|dll|class|png|jpg|jpeg)$',
\}


" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Set ctrlp CWD to the nearest ancestor directory which contains .git|.svn|.hg|.bzr
let g:ctrlp_working_path_mode = 'r'

" Airline settings
" NB: make sure that there's at least one bitmap font installed (e.g.
" terminus)
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme="base16"

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>bc :enew<cr>

" Move to the next buffer
nmap <leader>bn :bnext<CR>

" Move to the previous buffer
nmap <leader>bp :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Gitgutter remap
nmap <leader>gn <Plug>GitGutterNextHunk
nmap <leader>gp <Plug>GitGutterPrevHunk

set expandtab "Use spaces instead of tabs
set tabstop=4 "Insert 4 spaces
set shiftwidth=4 "Ident 4 spaces

set nobackup
set nowritebackup
set backupdir=~/.vim/temp,.
set directory=~/.vim/temp,.
