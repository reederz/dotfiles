set nocompatible  " be iMproved, required

filetype off      " required
set background=dark


call plug#begin('~/.config/nvim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'briancollins/vim-jst'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'groenewege/vim-less'
Plug 'jmcantrell/vim-virtualenv'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kchmck/vim-coffee-script'
Plug 'niklasl/vim-rdf'
Plug 'ntpeters/vim-better-whitespace'
Plug 'octref/RootIgnore'
Plug 'pangloss/vim-javascript'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-surround'
Plug 'uarun/vim-protobuf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Add plugins to &runtimepath
call plug#end()

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

" Bind fzf fuzzy complete to ,p
nmap <leader>p :FZF<cr>

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

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" fix tmux navigator on nvim
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
