source ~/.vim/autoload/pathogen.vim
"runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
set encoding=utf-8

filetype on
filetype plugin on
syntax enable

let g:solarized_termcolors=256
colorscheme solarized
set background=dark

let g:django_projects = '~/Projects/django'
"let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv
"let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root.

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noautoindent
set expandtab

map <C-h> :noh<cr>

map <C-t><up>    :tabl<cr>
map <C-t><down>  :tabf<cr>
map <C-t><left>  :tabp<cr>
map <C-t><right> :tabn<cr>

map <C-t>k :tabl<cr>
map <C-t>j :tabf<cr>
map <C-t>h :tabp<cr>
map <C-t>l :tabn<cr>

map <C-t>q :tabc<cr>
map <C-t>n :tabnew<cr>

map <C-n> :NERDTreeToggle<cr>

vmap <C-c> :w! ~/.vimbuffer<cr>
nmap <C-c> :.w! ~/.vimbuffer<cr>
nmap <C-p> :r ~/.vimbuffer<cr>
