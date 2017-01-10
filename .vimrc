" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ervandew/supertab'

if executable("ctags")
    Plug 'majutsushi/tagbar'
endif 

call plug#end()

" General stuff
set hlsearch
set expandtab
set shiftwidth=4
set smartindent
set autoindent

" Keymaps/shortcuts
let mapleader = "\<Space>"
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>y :TagbarToggle<CR>
nnoremap <Leader>b :BuffergatorToggle<CR>
nnoremap <Leader>v :BuffergatorTabsToggle<CR>
nmap <silent> <A-h> <C-w>h
nmap <silent> <A-j> <C-w>j
nmap <silent> <A-k> <C-w>k
nmap <silent> <A-l> <C-w>l
nnoremap <silent> <ESC> :noh<CR>

" Colorscheme
if filereadable(expand("~/.vim/colors/base16-tomorrow-night.vim"))
    let base16colorspace=256
    colorscheme base16-tomorrow-night
endif

" Buffergator
set hidden
let g:buffergator_suppress_keymaps = 1
let g:buffergator_autoupdate = 1

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_width = 20

" Latex
if executable('zathura')
    let g:vimtex_view_general_viewer = 'zathura'
endif

" Nerdtree
let NERDTreeMinimalUI=1

" Supertab
let g:SuperTabDefaultCompletionType = "context"
