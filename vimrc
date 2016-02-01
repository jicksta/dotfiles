set nocompatible              " require vim
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

	call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" General Editing
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'

" Appearance
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-git'

" Ruby
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-haml'

" JavaScript
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'burnettk/vim-angular'
Plugin 'mxw/vim-jsx'

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'

" Misc Web Development
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-markdown'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'

" Misc Languages
Plugin 'elmcast/elm-vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'wting/rust.vim'
Plugin 'hdima/python-syntax'
Plugin 'chrisbra/csv.vim'

	call vundle#end()



filetype plugin indent on    " required
"filetype plugin on

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set backspace=2
set autoindent

set laststatus=2

set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set hlsearch
set incsearch

colorscheme solarized

syntax on

noremap <Leader>t :CtrlP<CR>
noremap <Leader>e :CtrlPMRU<CR>
noremap <Leader>n :NERDTree<CR>


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


let g:gitgutter_enabled = 1
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_column_always = 1
let g:gitgutter_highlight_lines = 1

let g:lightline = {
      \ 'colorscheme': 'solarized_light',
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details
