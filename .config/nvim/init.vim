syntax on

set number relativenumber
set tabstop=4 softtabstop=4
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch
set inccommand=split

let mapleader="\space>"
nnoremap <c-p> :Files<cr>
inoremap ;; <C-o>A;
inoremap :: <C-o>A:
map <C-m> :NERDTreeToggle<CR>

"Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'   
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'lilydjwg/colorizer'
Plug 'preservim/nerdtree'

call plug#end()

" Colorscheme
set background=dark

" Enables transparency
hi Normal guibg = NONE ctermbg = NONE
