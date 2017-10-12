source ~/.vim/autoload/pathogen.vim
"runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
set encoding=utf-8

filetype on
filetype plugin on
syntax enable

au BufNewFile,BufRead *.ejs set filetype=html

"let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noautoindent
set expandtab
set noswapfile
set laststatus=2
set wildmode=longest,list,full
set wildmenu

"set foldmethod=indent
autocmd FileType apache,xml,html,css,php,cpp,java,python,javascript setlocal foldmethod=indent
nmap <space> za
nmap <C-Space> zR
nmap <C-@> <C-Space>

map <C-h> :noh<cr>

map <C-t><up>    :tabl<cr>
map <C-t><down>  :tabf<cr>
map <C-t>p       :tabp<cr>
map <C-t>n       :tabn<cr>
map <C-t><left>  :tabp<cr>
map <C-t><right> :tabn<cr>

map <C-t>k :tabl<cr>
map <C-t>j :tabf<cr>
map <C-t>h :tabp<cr>
map <C-t>l :tabn<cr>

map <C-t>q :tabc<cr>
"map <C-t>N :tabnew<cr>

map <C-n> :NERDTreeToggle<cr>

vmap <C-c> :w! ~/.vimbuffer<cr>
nmap <C-c> :.w! ~/.vimbuffer<cr>
nmap <C-p> :r ~/.vimbuffer<cr>
