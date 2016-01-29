set nocompatible              " require vim
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

	call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ap/vim-css-color'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'VimClojure'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'elzr/vim-json'
Plugin 'jnwhiteh/vim-golang'
Plugin 'chrisbra/csv.vim'
Plugin 'mxw/vim-jsx'
Plugin 'wting/rust.vim'
Plugin 'burnettk/vim-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-git'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hdima/python-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

	call vundle#end()



filetype plugin indent on    " required
"filetype plugin on

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set backspace=2
set autoindent

set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set hlsearch
set incsearch

set laststatus=2


syntax on

noremap <Leader>t :CtrlP<CR>
noremap <Leader>e :CtrlPMRU<CR>
noremap <Leader>n :NERDTree<CR>


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


let g:gitgutter_enabled = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details
