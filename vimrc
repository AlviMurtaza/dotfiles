" Vi improved
set nocompatible

" Load Plug and bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Detect filetype automatically
filetype indent plugin on

" UTF-8 encoding
set encoding=utf-8

" Enable interop with system clipboard
" set clipboard+=unnamed

" Faster vim
set ttyfast
set lazyredraw

" Remove delay on ESC and O
set timeout timeoutlen=500 ttimeoutlen=100

" Larger history
set history=10000

autocmd BufRead,BufNewFile *.md setlocal spell
set complete+=kspell

" autoload changed files
set autoread

set noswapfile
set nobackup

"Syntax processing
syntax enable

silent! colorscheme Tomorrow-Night
" set background=dark

"Highlight matching parenthesis-like character
set showmatch

"set number of colors supported to 256
set t_Co=256

"Show relative line number
set relativenumber

"Show line number
set number
set relativenumber

"Highlight current line
set cursorline

"Show status line
set laststatus=2

"Spacing between lines
set linespace=4

"Minimum number of lines below the cursor
set scrolloff=5

"Wraps longer lines instead in the screen
set wrap

"Break wrapped lines into multiple lines
set linebreak

"Show difference between tabs and spacese
set list

"Shows chars like tabs, trailing spaces and eol
set listchars=tab:→\ ,trail:·,extends:❯,precedes:❮

"Backspace works normally in all modes
set backspace=indent,eol,start

"Text flow width
set textwidth=80

"Enable column
set colorcolumn=+1

"Enable mouse interactions
set mouse=a

"Split pane below instead on top
set splitbelow

"Split pane on right instead on left
set splitright

"Autocompletes things like filenames and all
set wildmenu

set wildmode=full

"Highlight search results
set hlsearch

"Incrementally highlight search results
set incsearch

"Global changes
set gdefault

"Case-sensitive search
set ignorecase
set smartcase

"Tabs are spaces
set expandtab

"1 tab = 2 spaces
set tabstop=2

"1 tab in insert mode = 2 spaces
set softtabstop=2

"Space when indenting a line or block
set shiftwidth=2

"Auto-indent when a new line is added
set smartindent

"Use the indentation of current line when a new line is added
set autoindent

"Use tabs or spaces based for the new line based on the current line
set copyindent

"Enable code folding
set foldenable

"Folds open
set foldlevelstart=100

"Nested folds
set foldnestmax=10

"Folding based on indentation
set foldmethod=indent

" Tag path
set tags=tags,./tags

" Leader is the COMMA
let mapleader=","

"Toggle folds
nnoremap <space> za

" End of line/ Start of line
noremap H ^
noremap L $

"Leave insert mode
inoremap jk <esc>

"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"Disable Arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

" replace grep with ag
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " let g:ctrlp_working_path_mode = 'ca'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

"Toggle background from dark to light
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark")<CR>

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Search result in the middle on screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Disable ex mode
nnoremap Q <nop>

" Indent whole buffer
nnoremap <leader>= mmgg=G`m=<cr>

" NERDTree show/hide
map <Leader>n :NERDTreeToggle<cr>

" Tagbar
map <Leader>t :Tagbar<cr>

" Vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

" Syntastic
let g:syntastic_javascript_checkers=['eslint']

" Fugative
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gbb :Gblame<cr>

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_eager = 0
let g:gitgutter_sign_column_always = 0
hi clear SignColumn

" UltiSnip
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Airline theme
let g:airline_theme='tomorrow'

" Copy to clipboard
map <Leader>y "*y

" Paste from clipboard
map <Leader>p "*p

" Toggle panes
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" JSX
let g:jsx_ext_required = 0

" go import on save
let g:go_fmt_command = "goimports"

" Generate Tag
map <Leader>rt :!ctags --tag-relative --extra=+f -Rf.git/tags --exclude=.git,pkg --languages=-sql<CR><CR>
set tags+=.git/tags

" Neckbeard https://youtu.be/w6kPgTkEbZQ?t=13m13s
let ruby_space_errors = 1
let c_space_errors = 1

let g:rspec_command = "call VtrSendCommand('rspec {spec}', 1)"
map <Leader>e :call RunCurrentSpecFile()<CR>
map <Leader>nn :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

nnoremap <leader>fr :VtrFocusRunner<cr>
nnoremap <leader>kr :VtrKillRunner<cr>
nnoremap <leader>rr :VtrSendLinesToRunner<cr>
nnoremap <leader>dr :VtrSendCtrlD<cr>
nnoremap <leader>ar :VtrAttachToPane<cr>
