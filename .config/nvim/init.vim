syntax on

set number relativenumber
set tabstop=4 softtabstop=4
set smartindent
set nowrap
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
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'

call plug#end()

" Lsp Config
:lua << EOF
    local nvim_lsp = require('lspconfig')
	local on_attach = function(_, bufnr)
	   require('completion').on_attach()
    end
	local servers = {'pyls', 'tsserver'}
	for _, lsp in ipairs(servers) do
    	nvim_lsp[lsp].setup {
	        on_attach = on_attach,
    	}
    end
EOF

" Colorscheme
colorscheme gruvbox
set background=dark

" Enables transparency
hi Normal guibg = NONE ctermbg = NONE
