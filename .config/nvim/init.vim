syntax on

set number relativenumber
set tabstop=4 softtabstop=4
set smartindent
set wrap
set smartcase
set noswapfile
set incsearch
set inccommand=split
set completeopt=menuone,noinsert,noselect
set termguicolors

let mapleader="\space>"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" Hexokinase config
let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
let g:Hexokinase_refreshEvents = ['TextChanged']

" Emmet shorcuts
let g:user_emmet_mode='inv'
let g:user_emmet_leader_key=','

nnoremap <c-p> :Files<cr>
inoremap ;; <C-o>A;
inoremap :: <C-o>A:
nnoremap <F5> :UndotreeToggle<CR>

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'   
Plug 'jiangmiao/auto-pairs'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" Colorscheme
colorscheme PaperColor
set background=dark

" Enables transparency
hi Normal guibg = NONE ctermbg = NONE
