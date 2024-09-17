-- init.lua
require('settings')
require('keymaps')
require('plugins')
require('lsp')
require('nvim-web-devicons').setup
{
        default = true;
}

require("nvim-tree").setup {
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        git = true,
      },
    },
  },
  -- Define the custom mappings in the `on_attach` function
  on_attach = function(bufnr)
    local api = require('nvim-tree.api')
    
    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Default mappings for nvim-tree
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open in Vertical Split'))
    vim.keymap.set('n', 'x', api.node.open.horizontal, opts('Open in Horizontal Split'))
    -- Add more custom mappings here if needed
  end,
}

