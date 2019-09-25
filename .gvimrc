" My .gvimrc - macvim options

" setup the GUI
" set cursorline             " Enable current line highlight
" set mouse=a                " Enable mouse interaction
" set guioptions -=L         " Disable conditional left scrollbar
" set guioptions -=l         " Disable Left scrollbar always
" set guioptions -=R         " Disable conditional right scrollbar
" set guioptions +=r         " Enable right scrollbar always
" set guioptions -=b         " Disable bottom scrollbar
" set guioptions -=m         " Disable menubar
" set guioptions -=T         " Disable Toolbar
" set lines=55               " Set default window size
" set columns=100            " Set default window size

" highlight CursorLineNr guibg=#073642
" highlight NonText guifg=#002b36 guibg=#002b36

" let g:gitgutter_override_sign_column_highlight = 0
" highlight LineNr guifg=#586e75 guibg=#073642
" highlight SignColumn guifg=#839496 guibg=#073642
" highlight GitGutterAdd guifg=#2aa198 guibg=#073642
" highlight GitGutterChange guifg=#b58900 guibg=#073642
" highlight GitGutterDelete guifg=#dc322f guibg=#073642
" highlight GitGutterChangeDelete guifg=#dc322f
" let g:airline_powerline_fonts = 1

" Macvim
" highlight  BufTabLineCurrent guifg='white' guibg='#3d5050'
" highlight  BufTabLineActive guibg='gray'  guifg='white' 
" highlight  BufTabLineFill guibg='#e4e4e4'    guifg='darkgray' 
" highlight  BufTabLineHidden guibg='#e4e4e4'  guifg='darkgray' 


" Make <shift> + k work for man pages in gui
nnoremap K :<C-U>exe "Man" v:count "<C-R><C-W>"<CR>
" Control + Space goes to previous buffer
nnoremap <C-Space> :bp<CR>
runtime! ftplugin/man.vim

" setup font
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h12
set linespace=0
