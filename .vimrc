" Plugins
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' , 'for': 'python'}
if has('nvim')
    Plug 'w0rp/ale'
endif
"Plug 'klen/python-mode', {'for': 'python'}
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'mileszs/ack.vim'
Plug 'blueyed/vim-diminactive'

call plug#end()

" Keymaps/shortcuts
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>y :TagbarToggle<CR>
nnoremap <Leader>b :BuffergatorToggle<CR>
nnoremap <Leader>v :BuffergatorTabsToggle<CR>
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif
map <ESC> :noh<CR>

" Alt keys to navigate
nnoremap è <C-w>h
nnoremap ê <C-w>j
nnoremap ë <C-w>k
nnoremap ì <C-w>l
nnoremap Ê :tabnext<CR>
nnoremap Ë :tabprevious<CR>

" Colorscheme
let base16colorspace=256
colorscheme base16-tomorrow-night

" Buffergator
set hidden
let g:buffergator_suppress_keymaps = 1
let g:buffergator_autoupdate = 1

" Ack/Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Indenting
set expandtab
set shiftwidth=4
set smartindent
set autoindent


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_width = 20

" Latex
let g:vimtex_view_general_viewer = 'zathura'

" Nerdtree
let NERDTreeMinimalUI=1

" Airline
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1

