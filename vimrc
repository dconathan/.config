" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'stephpy/vim-yaml'
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

" Keymaps/shortcuts
nmap <silent> <A-h> <C-w>h
nmap <silent> <A-j> <C-w>j
nmap <silent> <A-k> <C-w>k
nmap <silent> <A-l> <C-w>l

let g:haskell_classic_highlighting = 1
