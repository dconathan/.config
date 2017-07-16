" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jiangmiao/auto-pairs'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'vim-syntastic/syntastic'
Plug 'chriskempson/base16-vim'
Plug 'mhinz/vim-startify'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'waylan/vim-markdown-extra-preview'
Plug 'plasticboy/vim-markdown'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'

if has("lua")
    "Plug 'Shougo/neocomplete.vim'
else
    "Plug 'ervandew/supertab'
endif

if executable("ctags")
"    Plug 'majutsushi/tagbar'
endif 

call plug#end()



" General stuff
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set hlsearch
set expandtab
set shiftwidth=4
set smartindent
set autoindent
set directory=$HOME/.vim/swapfiles//
set mouse=a
set foldenable
set foldlevel=99
set foldmethod=indent


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


" startify
let g:startify_bookmarks = [ '~/.vimrc' ]
let g:startify_session_persistance = 1
let g:startify_custom_header = ['']


"let g:UltiSnipsExpandTrigger = "<S-Tab>"

" Colorscheme
"if filereadable(expand("~/.vim/plugged/base16-vim/colors/base16-tomorrow-night.vim"))
   "let base16colorspace=256
"colorscheme base16-default-dark
"endif

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
let g:vimtex_latexmk_callback=0

" Nerdtree
let NERDTreeMinimalUI=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd VimEnter *
"            \   if !argc()
"            \ |   Startify
"            \ |   NERDTree
"            \ |   wincmd w
"            \ | endif
"let NERDTreeHijackNetrw = 0


" Neocomplete
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_auto_close_preview = 1
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Airline
let g:airline_theme='base16_eighties'


"YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


