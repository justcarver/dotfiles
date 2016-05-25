" Initialize Vim-Plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'kien/ctrlp.vim'

call plug#end()

"Syntax Highlighting
syntax on

"Set Line Numbers and Relative Line Numbers
set number
set relativenumber

"Set tab behavior
set shiftwidth=2
set softtabstop=2
set smarttab

"Set color column to help enforce line length
let &colorcolumn=join(range(81,999),",")

"Remap the arrow keys to help lower dependence
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
