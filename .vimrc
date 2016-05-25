" Initialize Vim-Plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Vim-Airline - status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
"End Vim-Plug

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

"Vim-Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_default'
