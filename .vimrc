set ts=4 sw=4 et hidden
syn on
set number
set clipboard=unnamed

set backup
set backupdir=/private/tmp
set dir=/private/tmp

set termguicolors

let g:session_autosave = 'no'

call plug#begin('~/.vim/plugged')
"Plug 'Valloric/MatchTagAlways'
"Plug 'moll/vim-node'
"Plug 'nvie/vim-flake8'
"Plug 'pangloss/vim-javascript'
"Plug 'mustache/vim-mustache-handlebars'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'qpkorr/vim-renamer'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'will133/vim-dirdiff'
"Plug 'ntpeters/vim-better-whitespace'
call plug#end()

if &diff
    " diff mode
	" wrap and ignore white space in diff mode
    set diffopt+=iwhite
    autocmd FilterWritePre * setlocal wrap<

	set diffexpr=DiffW()
	function DiffW()
	  let opt = ""
	   if &diffopt =~ "icase"
		 let opt = opt . "-i "
	   endif
	   if &diffopt =~ "iwhite"
		 let opt = opt . "-w " " swapped vim's -b with -w
	   endif
	   silent execute "!diff -a --binary " . opt .
		 \ v:fname_in . " " . v:fname_new .  " > " . v:fname_out
	endfunction
endif

" Fix the difficult-to-read default setting for diff text highlighting.  The
" bang (!) is required since we are overwriting the DiffText setting. The highlighting
" for "Todo" also looks nice (yellow) if you don't like the "MatchParen" colors.
highlight! link DiffText Todo

let g:ale_linters = { 'javascript': ['eslint'], }


let g:DirDiffExcludes = "node_modules,*.git"
let g:DirDiffIgnore = "Id:"
" ignore white space in diff
let g:DirDiffAddArgs = "-w" 
let g:DirDiffEnableMappings = 1


"vmap <C-c> "+yi
"vmap <C-x> "+c
"vmap <C-v> c<ESC>"+p
"imap <C-v> <ESC>"+pa
