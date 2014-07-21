""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" It's VIM,not VI
set  nocompatible
" vundle required,
filetype off     

" Set file encoding
set fenc=utf-8
set fencs=utf8,gbk,gb2312,gb18030,cp936

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast reloading of the .vimrc
map <leader>s :source ~/.vimrc<cr>

"Fast switch paste on/off
set pastetoggle=<F3>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set font
set gfn=DejaVu\ Sans\ Mono\ 12

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on wild menu
set wildmenu

"Always show current position
set ruler

"the commandbar is 2 high
set cmdheight=2

"show line number
set nu

"Set backspace
set backspace=eol,start,indent

"Ignore case when searching
set ignorecase
set incsearch

"hightlight search things
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

map <leader>t2 :set shiftwidth=2<cr>
map <leader>t4 :set shiftwidth=4<cr>

set smarttab
set lbr
set tw=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'ValloriC/YouCompleteMe'
Plugin 'davidhalter/jedi'

Plugin 'scrooloose/nerdtree'

"Python
Plugin  'nvie/vim-flake8'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"ycm conf
let g:ycm_autoclose_preview_window_after_completion=1

"NerdTree
map <leader>n :NERDTreeToggle<CR>

"syntastic conf
"let g:syntastic_python_checkers=['flake8']
"let g:systastic_cpp_checkers=['gcc']
"let g:syntastic_cpp_check_header = 1
