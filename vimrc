"Automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

"Enable pathogen and put syntax highlights on
filetype off
call pathogen#infect()
filetype plugin indent on
syntax on

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
nnoremap <F5> :GundoToggle<CR>

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
nnoremap <F4> :ConqueTermVSplit zsh<CR>
let g:ConqueTerm_EscKey = '<ESC>'

"Test, make jj in insert mode act like esc key
inoremap jj <ESC>

"Leader + space cleans the search
nnoremap <leader><space> :noh<cr>

"Leader commands
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
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

" Wildmenu completion
set wildmenu
set wildmode=list:longest

" Ignores
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
" cursor is at the end of the word, press <c-u> to uppercase it, and then
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

