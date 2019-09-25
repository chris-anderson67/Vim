""""""""""""""""""""""""""""""""""""
"  My .vimrc - partially portable  "
"         Chris Anderson           "
""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""
" Useful commands
""""""""""""""""""""""""""""""""""""
" :read - inserts file contents at cursor
" :read !<cmd> - inserts result of command at cursor
" :e **/*<partial> fuzzy file find
" %s/button/btn/g - replace
" gv - previous selection
" ^f / ^b - page down / up
" ^d / ^u - scroll down / up
" ^a / ^x - increment / decrement

" Big switches
let g:INDENT_SIZE = 2          " Default indent size

""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""
" General
filetype plugin indent on       " File type detection
syntax enable                   " Syntax highlighting
set nocompatible                " Don't emulate Vi
set mouse=a                     " Add all mouse functionality if possible
set noeb vb t_vb=               " Disables visual bell, stops scroll freeze
set exrc                        " Allow for project specific vimrc files
set path+=**                    " Allow search down into sub-folders
set autoread                    " Automatically detect changed on window switch
set updatetime=750              " Milliseconds to wait after typing to run checks
set wildmenu                    " Visual autocomplete for commands
set autochdir                   " Automatically change cwd to that of the current file

" Indentation
set expandtab                   " Use spaces instead of tabs
let &shiftwidth = INDENT_SIZE   " One (auto)indent is INDENT_SIZE spaces
let &softtabstop = INDENT_SIZE  " Effective width of <Tab> is INDENT_SIZE
set autoindent                  " Keep same indent on new line
set smarttab                    " Allow backspace to delete <shiftwidth> spaces
set smartindent                 " Better autoindenting based on context ({, ;)
set nowrap                      " Default to no wrap - manually enable for filetypes later
set linebreak                   " When wrapping, break on words (breakat)

" Display
set laststatus=2                " Show status line only with multiple windows
set cursorline                  " Highlight current line
set title 	                " Shows file name in status line
set number                      " Show no line numbers in margin
set ruler                       " Shows the row and col in status line
set showcmd 	                " Shows command incrementally in Normal mode
set showmode                    " Shows currently active mode
set display+=lastline           " Show last line on screen (dont display @)
set scrolloff=5                 " Always show 5 lines past cursor
let g:netrw_banner = 0          " No file explorer banner
let g:netrw_liststyle = 3       " Tree style file view

" Editing
set backspace=indent,eol,start  " Allow backspace in insert mode
set undolevels=1000             " Make undo-stack super long
set formatoptions+=j            " Delete comment chars when joining commented lines
set nrformats-=octal            " Don't treat numbers starting with 0 as octal

" Search
set incsearch                   " Enables incremental search
set hlsearch                    " Highlight search matches
set ignorecase                  " Case insensitive searching
set smartcase                   " Ignore case unless uppercase letter is used


""""""""""""""""""""""""""""""""""""
" Key-bindings
""""""""""""""""""""""""""""""""""""
" Space, Ctrl-space: switch buffers
noremap <space>n :bn<CR>
noremap <space>N :bp<CR>

noremap <space>y "+y
noremap <space>Y "+Y
noremap <space>d "+d
noremap <space>p "+p
noremap <space>P "+P

" j, k, shift-4, shift-6 behave correctly across wrapped lines
map  j gj
map  k gk
map  ^ g^
map  $ g$

" Search for selection with * in visual
vnoremap * y/\V<C-r>=escape(@",'/\')<CR><CR>

" Auto correct spelling with Ctrl + l
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <c-l> 1z=

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" Allow for mistypes
command WQ wq
command Wq wq
command W w
command Q q
command QA qa
command Qa qa

""""""""""""""""""""""""""""""""""""
" Fuzzy file-finding (:e **/*<partial...><Tab>)
""""""""""""""""""""""""""""""""""""
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

""""""""""""""""""""""""""""""""""""
" Auto commands
""""""""""""""""""""""""""""""""""""
" Re-enable line-wrapping and spell-checking for some filetypes
augroup WrapLineInTeXFile
    autocmd!
    autocmd FileType tex setlocal wrap
    autocmd!
    autocmd FileType tex setlocal spell
augroup END

augroup WrapLineInMDFile
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd!
    autocmd FileType markdown setlocal spell
augroup END


""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

call plug#end()

""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""
colorscheme darcula
