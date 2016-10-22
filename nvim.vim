set nocompatible  " be iMproved, required

filetype off      " required
set background=dark


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'briancollins/vim-jst'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'gertjanreynaert/cobalt2-vim-theme'
Plugin 'gmarik/Vundle.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'niklasl/vim-rdf'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'octref/RootIgnore'
Plugin 'pangloss/vim-javascript'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'stephpy/vim-yaml'
Plugin 'tpope/vim-surround'
Plugin 'uarun/vim-protobuf'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Set ctrlp CWD to the nearest ancestor directory which contains .git|.svn|.hg|.bzr
let g:ctrlp_working_path_mode = 'r'

" Airline settings
" NB: make sure that there's at least one bitmap font installed (e.g.
" terminus)
set laststatus=2
let g:airline_powerline_fonts=1
" let g:airline_theme="base16"

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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:syntastic_javascript_checkers = ['eslint']

let g:NERDSpaceDelims = 1

set expandtab "Use spaces instead of tabs
set tabstop=4 "Insert 4 spaces
set shiftwidth=4 "Ident 4 spaces
