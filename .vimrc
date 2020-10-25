syntax on

set number relativenumber
set tabstop=4 softtabstop=4
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0<TAB> 
inoremap {;<CR> {<CR>};<ESC>0<TAB>
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

hi Normal guibg=NONE ctermbg=NONE
