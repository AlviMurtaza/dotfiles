"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Completion
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax Checking
Plug 'benekastah/neomake'

" Motion
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/committia.vim'
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

" JavaScript
Plug 'pangloss/vim-javascript'

" Markdown
Plug 'tpope/vim-markdown'

" Elixir
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'mattn/webapi-vim'
Plug 'tpope/vim-endwise'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mattreduce/vim-mix'
Plug 'lucidstack/hex.vim'

" Handlebars
Plug 'mustache/vim-mode'

" Test
Plug 'janko-m/vim-test'

" Presentation
Plug 'sotte/presenting.vim'

" Tmux
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

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

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Highlight search results
set hlsearch

" Incrementally highlight search results
set incsearch

" Case-sensitive search
set ignorecase
set smartcase

" Tabs are spaces
set expandtab

" 1 tab = 2 spaces
set tabstop=2

" 1 tab in insert mode = 2 spaces
set softtabstop=2

" Space when indenting a line or block
set shiftwidth=2

" Auto-indent when a new line is added
set smartindent

" Use the indentation of current line when a new line is added
set autoindent

" Use tabs or spaces based for the new line based on the current line
set copyindent


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

" Fix <c-h> for neovim
if has('nvim')
  nmap <BS> <C-W>h
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

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
nnoremap <C-p><C-p> :GitFiles<cr>
nnoremap <C-p><C-o> :Buffers<cr>
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" vim-test
let test#strategy = "neovim"
map <leader>tt :TestNearest<cr>
map <leader>tT :TestFile<cr>
map <leader>ta :TestSuite<cr>
map <leader>tl :TestLast<cr>
map <leader>tv :TestVisit<cr>

" Git
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'vim', 'elixir', 'python', 'bash=sh']

" Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufRead,BufWritePost * Neomake
