syntax enable
colorscheme monokai
set termguicolors


set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set number
set ruler
set ignorecase smartcase
set incsearch
set hlsearch
set showmatch
"set smartindent
set backspace=indent,eol,start

"enable italic
let g:monokai_term_italic = 1

"plugin
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/delimitMate.vim'
Plug 'tpope/vim-commentary'


call plug#end()

"double click to select
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>


"highlight selected
hi Search term=reverse cterm=reverse guibg=Grey


"emacs shortcut
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>Pa
inoremap <C-X><C-S> <Esc>:w<CR>a
nnoremap <C-L> :set invnumber<CR>

inoremap <C-_> <ESC>:Commentary<CR>
nnoremap <C-_> :Commentary<CR>
