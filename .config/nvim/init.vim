" Initialize Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

" Vim-Airline - status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Iceberg.vim : Dark Blue Theme
Plug 'cocopon/iceberg.vim'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" NERD Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" obsession.vim - Using sessions to help restore vim state
Plug 'tpope/vim-obsession'

" Fugitive.vim
Plug 'tpope/vim-fugitive'

" vim-surround
Plug 'tpope/vim-surround'

" ALE
Plug 'w0rp/ale'

" Javascript Syntax
Plug 'pangloss/vim-javascript'

" Vue JS
Plug 'posva/vim-vue'

" ReactJS
Plug 'mxw/vim-jsx'

" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" restore_view - Automate views to help with code folding, etc.
Plug 'vim-scripts/restore_view.vim'

" Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Autocomplete Sources
" JavaScript
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Go
Plug 'zchee/deoplete-go', { 'do': 'make'}
" Elixir
Plug 'slashmili/alchemist.vim'

" End VimPlug block
call plug#end()

" Turn of vi compatibility
set nocompatible

" Set theme
set background=dark
colorscheme iceberg

" Set Color Column to help encourage shorter lines
let &colorcolumn=join(range(81,999),",")

" Syntax Highlighting
syntax on

" FileType Plugins
filetype plugin on

" Show Command
set showcmd

" Set Line Numbers for currect line and Relative Numbers for others
set number
set relativenumber

" Set Tab Behavior
" Show existing tabs with a specific width
set tabstop=2
" Indent with '>' will use 2 spaces
set shiftwidth=2
" Insert spaces instead of tabs when Tab is pressed.
set expandtab

" Enable mouse scrolling and limited support
set mouse=a

" Default Key Remaps
" Map leader to Space
map <SPACE> <leader>

"Maps to open Netrw
" <leader>+n will open Netrw at the current directory
noremap <leader>n :NERDTreeToggle<Cr>
" <leader>+b will open Netrw at the project directory
noremap <leader>b :Explore.<Cr>

"Split settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Plugin Specific Settings
" Options to help with restore_view
set viewoptions=cursor,folds,slash,unix
 let g:skipview_files = ['*\.vim']

" Vim-Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='iceberg'

" ALE
let g:ale_linters = {
 \ 'javascript': ['eslint'],
 \ 'python': ['flake8']
 \ }

let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'python': ['black']
 \ }

let g:ale_python_flake8_options = '--ignore=E501,E203,W503'

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" Deoplete (AutoComplete) settings.
"let g:deoplete#enable_at_startup = 1
"let g:neosnippet#enable_completed_snippet = 1

"let g:deoplete#sources#go#gocode_binary = '~/go/src/github.com/mdempsky/gocode'

" Auto-Pairs settings
" Disable the " chracter in .vim files.
au Filetype vim let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'", '`':'`'}
