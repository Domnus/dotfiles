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
nnoremap <leader>; A;<esc>
nnoremap <c-p> :Files<cr>

" Plugins

call plug#begin('~/.config/nvim/plugged') 

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'   
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'lilydjwg/colorizer'

call plug#end()

" Colorscheme

colorscheme gruvbox
set background=dark

" Enables transparency

hi Normal guibg = NONE ctermbg = NONE
