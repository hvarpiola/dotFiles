"Automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/sjl/gundo.vim'
Plugin 'gingerhot/conque-term-vim'
Plugin 'https://github.com/preservim/nerdcommenter'

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

"Tame the searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"Leader key
let mapleader = ","

"Get rid of help keys,
noremap <F1> <nop>
inoremap <F1> <nop>

"quick key for gundo mapping
"nnoremap <F5> :GundoToggle<CR>

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

"ConqueMappings
nnoremap <F4> :ConqueTermVSplit bash<CR>
let g:ConqueTerm_EscKey = '<ESC>'

"Test, make jj in insert mode act like esc key
inoremap jj <ESC>

"Leader + space cleans the search
nnoremap <leader><space> :noh<cr>

"Leader commands
"open new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l
"quickedit for vimrc
nnoremap <leader>ev <C-w><C-v><c-l>:e $MYVIMRC<cr<c-l>:e $MYVIMRC<cr>

"Use tab to find matching parentless
nnoremap <tab> %
vnoremap <tab> %

"Save the file if focus is lost
au FocusLost * :wa

"open nerdTree automatically if file sis not inputted
autocmd vimenter * if !argc() | NERDTree | endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR> Conflicts with back up

"Show whitepace
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

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

" Wildmenu completion
set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files

" Clojure/Leiningen
set wildignore+=classes
set wildignore+=lib
"Uppercase word" mapping.
"
" This mapping allows you to press <c-u> in insert mode to convert the
" current
" word to uppercase.  It's handy when you're writing names of constants and
" don't want to use Capslock.
"
" To use it you type the name of the constant in lowercase.  While your
"cursor is at the end of the word, press <c-u> to uppercase it, and then
" continue happily on your way:
"
"                            cursor
"                            v
"     max_connections_allowed|
"     <c-u>
"     MAX_CONNECTIONS_ALLOWED|
"                            ^
"                            cursor
"
" It works by exiting out of insert mode, recording the current cursor
" location
" in the z mark, using gUiw to uppercase inside the current word, moving back
" to
" " the z mark, and entering insert mode again.
" "
" " Note that this will overwrite the contents of the z mark.  I never use it,
" but
" " if you do you'll probably want to use another mark.
inoremap <C-u> <esc>mzgUiw`za

