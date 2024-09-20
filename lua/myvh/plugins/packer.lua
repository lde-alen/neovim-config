-- packer setup
require('packer').startup(function(use)
        use 'wbthomason/packer.nvim' -- packer manages itself

        -- Tree-sitter
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- TSUpdate ensures all parsers are automatically on plugin update

        -- LSP config for lsp
        use 'neovim/nvim-lspconfig'

        -- Nvim-completion pluggin
        use {
                'hrsh7th/nvim-cmp',
                requires = {
                        'hrsh7th/cmp-nvim-lsp',
                        'hrsh7th/cmp-buffer',
                        'hrsh7th/cmp-path',
                        'hrsh7th/cmp-cmdline',
                        'L3MON4D3/LuaSnip'
                }
        }

        -- Telescope
        use {
                'nvim-telescope/telescope.nvim',
                requires = { {'nvim-lua/plenary.nvim'} }
        }

        -- VimBeGood to practice vim motions
        use 'ThePrimeagen/vim-be-good'

        -- Vim which-key to see options and current existing shortcuts
        use { 'folke/which-key.nvim' }

        -- LuaSnip for code snippets
        use { 'L3MON4D3/LuaSnip', run = "make install_jsregexp" }

        -- Quality of life pluggin for mini functionalities
        use 'echasnovski/mini.nvim'

        -- Icons for nvim-tree
        use 'nvim-tree/nvim-web-devicons'

        use {
                "nvim-neo-tree/neo-tree.nvim",
                branch = "v3.x",  -- Use the latest stable version (v3.x branch)
                requires = { 
                        "nvim-lua/plenary.nvim",  -- Required dependency for neo-tree
                        "nvim-tree/nvim-web-devicons",  -- Optional, for file icons
                        "MunifTanjim/nui.nvim",  -- Required UI component
                },
        }

end)
