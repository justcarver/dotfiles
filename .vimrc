" Initialize Vim-Plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Vim-Syntastic : Syntax linting
Plug 'vim-syntastic/syntastic'

" Vim-Airline - status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Iceberg.vim : Dark blue theme
Plug 'cocopon/iceberg.vim'

" Vim-Javascript : improved JS highlighting. Recommend for Vim-JSX
Plug 'pangloss/vim-javascript'

" Vim-JSX - React Syntax Highlighting and indenting
Plug 'mxw/vim-jsx'

"Fugitive.vim
Plug 'tpope/vim-fugitive'

"vim-surround
Plug 'tpope/vim-surround'

"End Vim-Plug
call plug#end()

"Set theme
set background=dark
colorscheme iceberg

"Set color column to help enforce line length
let &colorcolumn=join(range(81,999),",")

"Syntax Highlighting
syntax on
let g:syntastic_javascript_checkers = ['eslint']

"Set Line Numbers and Relative Line Numbers
set number
set relativenumber

"Set tab behavior
set shiftwidth=2
set softtabstop=2
set smarttab

"Show Command
set showcmd

"Default Key Remaps
"Map leader to Space
map <SPACE> <leader>

"Maps to open Netrw
"<leader>+n will open Netrw at the current directory
noremap <leader>n :Ex<Cr>
"<leader>+b will open Netrw at the project directory
noremap <leader>b :e.<Cr>

"Remap the arrow keys to help lower dependence
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Remap the Vim split navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-h> <C-W><C-h>
nnoremap <C-l> <C-W><C-l>

"More natural split creation
set splitbelow
set splitright

"Plugin Settings
"Vim-Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='iceberg'
