-- Ensure packer is installed
vim.cmd [[packadd packer.nvim]]

-- packer setup
require('packer').startup(function(use)
        use 'wbthomason/packer.nvim' -- packer manages itself   
        -- Tree-sitter config
        use {
                'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate' -- updates parsers
        }
        use 'neovim/nvim-lspconfig' -- LSP configuration
        use {
                'hrsh7th/nvim-cmp',
                requires = {
                        'hrsh7th/cmp-nvim-lsp',
                        'hrsh7th/cmp-buffer',
                        'hrsh7th/cmp-path',
                        'hrsh7th/cmp-cmdline',
                        'L3MON4D3/LuaSnip'  -- Snippet engine
                }
        }

        use {
                'nvim-telescope/telescope.nvim',
                requires = { {'nvim-lua/plenary.nvim'} }  -- Telescope requires this dependency
        }

        -- Add more plugins here
end)
