execute pathogen#infect()
syntax enable

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set number
set tabstop=4

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
