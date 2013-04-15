"Automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

"Enable pathogen and put syntax highlights on
filetype off
call pathogen#infect()
filetype plugin indent on
syntax on

"Leader key
let mapleader = ","

"Test, make jj in insert mode act like esc key
inoremap jj <ESC>

"Tame the searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"Leader + space cleans the search
nnoremap <leader><space> :noh<cr>

"Use tab to find matching parentless
nnoremap <tab> % 
vnoremap <tab> %

"Save the file if focus is lost
au FocusLost * :wa

"open nerdTree automatically if file sis not inputted
autocmd vimenter * if !argc() | NERDTree | endif

"Rebind window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Easier moving of code blocks

vnoremap < <gv
vnoremap > >gv

"Show whitepace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

"Color scheme
set t_Co=256
color wombat256mod

"Showing linenumbers and length
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


