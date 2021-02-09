set number relativenumber


call plug#begin('~/.config/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Conquer of Completion extensions
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-python']

" Shades of Purple (vim & airline)
if (has("termguicolors"))
    set termguicolors
endif
syntax enable
colorscheme shades_of_purple
let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'
