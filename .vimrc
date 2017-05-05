set ts=4 sw=4 et hidden
syn on
set number
set clipboard=unnamed

let g:session_autosave = 'no'

call plug#begin('~/.vim/plugged')
"Plug 'Valloric/MatchTagAlways'
Plug 'moll/vim-node'
Plug 'nvie/vim-flake8'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
"Plug 'ntpeters/vim-better-whitespace'
call plug#end()

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
