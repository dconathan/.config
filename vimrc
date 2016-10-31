" Plugins
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' , 'for': 'python'}
Plug 'scrooloose/syntastic', {'for': 'python'}
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Alt keys to navigate
nnoremap è <C-w>h
nnoremap ê <C-w>j
nnoremap ë <C-w>k
nnoremap ì <C-w>l

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0

" Colorscheme
syntax enable
set background=dark
colorscheme solarized
source ~/.config/nvim/autoload/togglebg.vim

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0
let g:syntastic_auto_jump = 1
highlight link SyntasticError Error
highlight link SyntasticWarning Error
highlight link SyntasticStyleError Error
highlight link SyntasticStyleWarning Error
highlight link SyntasticErrorLine Todo 
highlight link SyntasticWarningLine Todo 
highlight link SyntasticStyleErrorLine Todo
highlight link SyntasticStyleWarningLine Todo

" Navigate through errors with Alt+n and Alt+N
nnoremap î :lnext<CR>
nnoremap Î :lprevious<CR>

" Latex
let g:vimtex_view_general_viewer = 'zathura'

" Nerdtree
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp()

" Airline
let g:airline#extensions#whitespace#enabled = 0

"
map <ESC> :set hls!<CR>
