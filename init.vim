set encoding=utf-8

call plug#begin("~/.vim/plugs")
  Plug 'vim-airline/vim-airline'		" add bottom line information
  Plug 'vim-airline/vim-airline-themes'		" theme for bottom line information
  Plug 'flazz/vim-colorschemes'			" colortheme for vim
call plug#end()

set relativenumber				" set number of curent line to 0

" :colorscheme molokai				" set a colour theme
:colorscheme busierbee

"autoset airline theme				" setup airline theme
 let g:airline_theme='alduin'
