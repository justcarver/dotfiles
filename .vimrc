set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Set colorscheme to Solarized
syntax enable
set background=dark
colorscheme solarized

"Set Line Numbers and Relative Line Numbers
set number
set relativenumber

"Remap the arrow keys to help lower dependence
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Switch : and ; bindings
nnoremap ; :
"nnoremap : ;
vnoremap ; :
"vnoremap : ;

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
	\|    if empty(bufname('%'))
	    \|        browse confirm write
	\|    else
	    \|        confirm write
	\|    endif
    \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

set shiftwidth=4
set softtabstop=4
set smarttab
