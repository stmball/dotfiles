local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

	--- APPEARANCE ---
    Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

    --- UTILS ---
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'windwp/nvim-autopairs'
    Plug 'easymotion/vim-easymotion'

    --- LSP + AUTOCOMPLETE ---
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

    --- Formatters ---
    Plug('prettier/vim-prettier', {['do'] = 'yarn install --frozen-lockfile --production' })
    Plug('psf/black', {branch='stable'})

    --- Copilot ---
    Plug('github/copilot.vim')

    --- Latex ---
    Plug 'lervag/vimtex'


vim.call('plug#end')

--- dracula & airline ---

vim.cmd('colorscheme gruvbox')
vim.g.airline_theme = 'gruvbox'
-- vim.cmd('hi Normal guibg=None ctermbg=None')
-- vim.g.airline_powerline_fonts = 1 
-- vim.g.airline_skip_empty_sections = 1 

--- nerdtree ---
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1


require('nvim-autopairs').setup{}

require('nvim-treesitter.configs').setup {
    ensure_installed = { "python", "javascript" },
    auto_install = true,

    highlight = {
        enable = true
    },


}

