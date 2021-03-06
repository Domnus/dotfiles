source $HOME/.config/nvim/nvimtree.vim " nvim-tree
source $HOME/.config/nvim/barbar.vim   " barbar

syntax on

set number relativenumber
set smartindent
set wrap
set smartcase
set noswapfile
set incsearch
set inccommand=split
set completeopt=menuone,noinsert,noselect
set termguicolors
set cursorline

let mapleader = "\<Space>"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" Hexokinase config
let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
let g:Hexokinase_refreshEvents = ['TextChanged']
" Rainbow config
let g:rainbow_active = 1 
" Emmet shorcuts
let g:user_emmet_mode='inv'
let g:user_emmet_leader_key=','
" lightline colorscheme
let g:lightline = { 'colorscheme': 'nightfly' } 

map <c-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <c-p> :Files<cr>
inoremap ;; <C-o>A;
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'   
Plug 'jiangmiao/auto-pairs'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'uiiaoo/java-syntax.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Barbar
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Explorer 
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"Colorschemes
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'bluz71/vim-nightfly-guicolors'

call plug#end()

" Colorscheme
let ayucolor="mirage"
set background=dark
colorscheme PaperColor

" Enables transparency
hi Normal guibg = NONE ctermbg = NONE
