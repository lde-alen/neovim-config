-- lua/lsp.lua

-- Use `pcall` to ensure `lspconfig` is available
local lspconfig = require('lspconfig')

-- Common on_attach function to map LSP-related keybindings
local on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true }
        local buf_set_keymap = vim.api.nvim_buf_set_keymap
        -- Key mappings for LSP
        buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)  -- Go to definition
        buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)        -- Hover documentation
        buf_set_keymap(bufnr, 'n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts) -- Go to implementation
        buf_set_keymap(bufnr, 'n', '<leader>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts) -- Rename symbol
        buf_set_keymap(bufnr, 'n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts) -- Code actions
        buf_set_keymap(bufnr, 'n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)   -- Find references
end

-- Setup LSP servers

-- Python LSP
lspconfig.pyright.setup {
        on_attach = on_attach,
}

-- JavaScript/TypeScript LSP
lspconfig.tsserver.setup {
        on_attach = on_attach,
}

-- Lua LSP (You may need to configure sumneko_lua or lua-language-server)
lspconfig.sumneko_lua.setup {
        settings = {
                Lua = {
                        runtime = {
                                version = 'LuaJIT',
                                path = vim.split(package.path, ';'),
                        },
                        diagnostics = {
                                globals = { 'vim' }, -- Recognize `vim` as a global variable
                        },
                        workspace = {
                                library = vim.api.nvim_get_runtime_file('', true),
                        },
                        telemetry = {
                                enable = false,
                        },
                },
        },
        on_attach = on_attach,
}

