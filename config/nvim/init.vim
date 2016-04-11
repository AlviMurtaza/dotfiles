"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Completion
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Motion
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Comments
Plug 'tpope/vim-commentary'

" Formatting
Plug 'editorconfig/editorconfig-vim'

" UI
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Markdown
Plug 'tpope/vim-markdown'

" Elixir
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'mattn/webapi-vim'

Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mattreduce/vim-mix'
Plug 'lucidstack/hex.vim'

" Test
Plug 'janko-m/vim-test'

" Presentation
Plug 'sotte/presenting.vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" Base
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
syntax enable

" Indentation and Spacing
set autoindent
set smarttab

" How backspace works
set backspace=indent,eol,start

" Completion
set complete-=i

" Scroll offset
set scrolloff=5

" Panes
set splitbelow
set splitright

" Encoding
set encoding=utf-8

" Faster vim
set ttyfast
set lazyredraw

" remove delay on esc and o
set timeout timeoutlen=500 ttimeoutlen=100

" Larger history
set history=10000

" Disable junk
set noswapfile
set nobackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

" Show relative line number
set relativenumber

" Colorscheme background
set background=dark

" Space between lines
set linespace=6

" Highlight current line
set cursorline

" Denote whitespace chars
set listchars=tab:→\ ,trail:·,extends:❯,precedes:❮

" Maximum text width
set textwidth=80

" Colorscheme
silent colorscheme gruvbox

" Highlight matching parenthesis-like character
set showmatch

" Show status line
set laststatus=2

"Wraps longer lines
set wrap

"Break wrapped lines into multiple lines
set linebreak


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set leader
let mapleader=","

" NERDTree
map <leader>n :NERDTreeToggle<CR>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Leave insert mode
inoremap jk <esc>

" Copy to clipboard
map <Leader>y "*y

" Paste from clipboard
map <Leader>p "*p

" Disable ex mode
nnoremap Q <nop>

" Toggle panes
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" bind \ (backward slash) to grep shortcut
nnoremap \ :Ag<SPACE>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" Plugin Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deoplete
let g:deoplete#enable_at_startup = 1

" FZF
nnoremap <C-p> :Files<cr>
nnoremap <leader>b :Buffers<cr>

" Airline
let g:airline_theme='gruvbox'

" vim-test
let test#strategy = "neovim"
map <leader>tt :TestNearest<cr>
map <leader>tT :TestFile<cr>
map <leader>ta :TestSuite<cr>
map <leader>tl :TestLast<cr>
map <leader>tv :TestVisit<cr>

" Git
nnoremap <leader>gg :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'vim', 'elixir', 'python', 'bash=sh']
