set encoding=UTF-8
set nocompatible                " disable compatibility to old-time vim
set showmatch                   " show matching
set ignorecase                  " case insensitive
set mouse=v                     " middle-click paste with
set hlsearch                    " highlight search
set incsearch                   " incremental search
set tabstop=2                   " number of columns occupied by tab
set softtabstop=2               " see multiple spaces as tab-stops
set expandtab                   " convert tab to white spaces
set shiftwidth=2                " width for auto indents
set autoindent                  " indent a new line the same amount as the line above
set number                      " add line numbers
set wildmode=longest,list       " get bash-like tab completion
filetype plugin indent on       " allow auto-indenting depending on file type
syntax on                       " syntax highlighting
set ttyfast                     " speed up scrolling
set mouse=a                     " enable mouse click
set cursorline                  " highlight cursor line
set spell                       " enable spell check (may need to download language package)
set noswapfile                  " disable creating swap file

call plug#begin()
Plug 'dracula/vim'            " theme
Plug 'ryanoasis/vim-devicons'   " icons
Plug 'SirVer/ultisnips'         " snippets engine
Plug 'honza/vim-snippets'       " collection of snippets
Plug 'scrooloose/nerdtree'      " file explorer
Plug 'preservim/nerdcommenter'  " for commenting line
Plug 'mhinz/vim-startify'       " start page with customizations
Plug 'neoclide/coc.nvim', {'branch': 'release'} " fast code completion engine
call plug#end()


" color schemes
" if (has(“termguicolors”))
  " set termguicolors
" endif

syntax enable
color scheme evening
colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>
:vnoremap gd :call CocActionAsync('jumpDefinition')

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


"SETUP NERD COMMENTER
"“ Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }}
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" for motions
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>


" CUSTOMIZE STARTIFY
let g:startify_bookmarks = ['~/Projects','~/.config/nvim']

" Define directory for snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

let g:coc_global_extensions = [
             \ 'coc-pairs',
             \ 'coc-snippets',
             \ 'coc-html',
             \ 'coc-tsserver',
             \ 'coc-css',
             \ 'coc-clangd',
             \ 'coc-json',
             \ 'coc-pyright',
             \ 'coc-sh',
             \ 'coc-flutter',
             \ ]


" Set TAB completion
set signcolumn=yes
inoremap <silent><expr> <TAB>
   \ pumvisible() ? coc#_select_confirm() :
   \ coc#expandableOrJumpable() ?
   \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()
function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction
let g:coc_snippet_next = '<tab>'


" Add custom function for trim white space on F5
function TrimWhitespace()
 let l = line('.')
 let c = col('.')
 %s/\s\+$//e
 call cursor(l, c)
endfun

autocmd BufWritePre * :call TrimWhitespace()
nnoremap <F5> :call TrimWhitespace()<CR>

