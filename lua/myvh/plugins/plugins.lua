-- Ensure packer is installed
vim.cmd [[packadd packer.nvim]]

require("myvh.plugins.luasnip.luasnip_config")
require("myvh.plugins.nvim-cmp.cmp")
require("myvh.plugins.nvim-tree.nvim-tree")
require("myvh.plugins.nvim-tree.nvim-tree-keymaps")
require("myvh.plugins.nvim-web-devicons.nvim-web-devicons")
require("myvh.plugins.telescope.telescope")
require("myvh.plugins.treesitter.treesitter")
require("myvh.plugins.which-key.which-key")
require("myvh.plugins.neo-tree.neo-tree")
require("myvh.settings.settings")
require("myvh.plugins.packer")
require("myvh.utils.utils")
