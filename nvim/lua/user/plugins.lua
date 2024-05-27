-- Plugins: -------------------------------
return require('packer').startup(function()

-- Packer:
use 'wbthomason/packer.nvim'

-- Colorschemes:
use {'morhetz/gruvbox', as = 'gruvbox'}
use {'AlessandroYorba/Alduin', as = 'alduin'}

-- LaTeX
use 'lervag/vimtex'

-- QoL & Misc:
use 'glepnir/dashboard-nvim'
use 'SirVer/ultisnips' -- snippets
use 'kyazdani42/nvim-web-devicons' -- dev icons



-- vimtex autocompletion
use 'neoclide/coc.nvim'



---- OLD NEOVIM PLUGINS -> CLEAN IT
-- LSP:
--use 'neovim/nvim-lspconfig'
--use 'williamboman/nvim-lsp-installer'
--use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
--use 'hrsh7th/cmp-nvim-lsp'
--use 'hrsh7th/cmp-buffer'
--use 'hrsh7th/cmp-path'
--use 'hrsh7th/cmp-cmdline'
--use 'hrsh7th/nvim-cmp'
--use 'f3fora/cmp-spell'
--use 'onsails/lspkind.nvim'
--use 'quangnguyen30192/cmp-nvim-ultisnips' -- snippet completion
--use "folke/trouble.nvim" -- error menu - setup later
--use 'folke/lsp-colors.nvim' -- colors for error menu - setup later

-- Debugging:
--use 'mfussenegger/nvim-dap'
--use 'leoluz/nvim-dap-go'
--use 'rcarriga/nvim-dap-ui'
--use 'theHamsta/nvim-dap-virtual-text'
--use 'nvim-telescope/telescope-dap.nvim'

-- QoL & Misc:
--use 'nvim-lua/plenary.nvim'
--use 'windwp/nvim-autopairs'
--use 'nvim-telescope/telescope.nvim'
--use 'nvim-telescope/telescope-fzf-native.nvim'
--use 'jpalardy/vim-slime'
--use 'akinsho/bufferline.nvim'
--use 'moll/vim-bbye'
--use 'nvim-lualine/lualine.nvim'
--use 'Shatur/neovim-session-manager'
--use 'kyazdani42/nvim-tree.lua'

-- Language specific plugins:
--use 'JuliaEditorSupport/julia-vim'  -- Julia
--use {
--    'iamcco/markdown-preview.nvim', -- Markdown
--    run = function() vim.fn['mkdp#util#install']() end,
--    ft = {'markdown'}
-- command: ":call mkdp#util#install() if it doesn't work
--}


end)

