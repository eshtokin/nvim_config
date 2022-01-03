set encoding=utf-8

call plug#begin("~/.vim/plugs")
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'flazz/vim-colorschemes'
call plug#end()

set relativenumber
" :colorscheme molokai
:colorscheme busierbee

"autoset airline theme
 let g:airline_theme='alduin'
