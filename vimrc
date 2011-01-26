call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

colorscheme vividchalk

set nocompatible
set number
set hidden
set hlsearch
set incsearch
set ruler
set visualbell
set wildmode=list:longest

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set backspace=2
set autoindent

set foldcolumn=1
set foldmethod=syntax
set foldlevelstart=20
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

filetype on
filetype indent on
filetype plugin on

syntax on

map <Leader>e :MRU<Enter>
if bufwinnr(1)
  map + <C-w>+
  map = <C-w>+
  map - <C-w>-
endif

" Don't unselect text when changing indentation in visual mode.
vmap > >gv
vmap < <gv

""" Gets rid of arrow keys but screws other stuff up I think.
"noremap  <Up> ""
"noremap!  <Up> <Esc>
"noremap  <Down> ""
"noremap!  <Down> <Esc>
"noremap  <Left> ""
"noremap!  <Left> <Esc>
"noremap  <Right> ""
"noremap!  <Right> <Esc>
