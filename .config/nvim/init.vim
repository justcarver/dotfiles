"Initialize Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

"Vim-Airline - status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Iceberg.vim : Dark blue theme
Plug 'cocopon/iceberg.vim'

"JSX Support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"Neomake - Mainly for Async syntax
Plug 'neomake/neomake'

"obsession.vim - Using sessions to help restore vim state
Plug 'tpope/vim-obsession'

"Fugitive.vim
Plug 'tpope/vim-fugitive'

"vim-surround
Plug 'tpope/vim-surround'


"End Vim-Plug block
call plug#end()

set nocompatible

"Set Theme
set background=dark
colorscheme iceberg

"Set Color Column to help encourage shorter lines
let &colorcolumn=join(range(81,999),",")

"Syntax Highlighting
syntax on

"Show Command
set showcmd

"Set Line Numbers for currect line and Relative Numbers for others
set number
set relativenumber

"Set Tab Behavior
set shiftwidth=2
set softtabstop=2
set smarttab

"Default Key Remaps
"Map leader to Space
map <SPACE> <leader>

"Maps to open Netrw
"<leader>+n will open Netrw at the current directory
noremap <leader>n :Ex<Cr>
"<leader>+b will open Netrw at the project directory
noremap <leader>b :e.<Cr>

"Vim Spell Check in Markdown and Git Commit messaged
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

"Plugin Specific Settings
"Vim-Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='iceberg'

"NeoMake
"Use eslint for JavaScript files
let g:neomake_javascript_enabled_makers = ['eslint']
"Makes errors appear in the window without removing focus from the file
let g:neomake_open_list = 2
"Automatically run NeoMake when I enter a buffer or write to file
autocmd! BufWritePost,BufEnter * Neomake
"NeoMake keybinds
"Open Location Window
"nmap <Leader>e :lopen<CR>
"Go to current error/warning
nmap <Leader>e :ll<CR>
"Go to next error/warning
nmap <Leader>ej :lnext<CR>
"Go to previous error/warning
nmap <Leader>ek :lprev<CR>

