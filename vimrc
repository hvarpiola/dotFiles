"Automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

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

"Clor scheme
set t_Co=256
color wombat256mod

"Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

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


