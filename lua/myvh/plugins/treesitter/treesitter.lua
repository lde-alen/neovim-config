-- lua/treesitter.lua

-- Load the Tree-sitter plugin configuration
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "bash",
    "lua",
    "python",
    "javascript",
    "typescript",
    "html",
    "css",
    "json",
    "markdown",
    "markdown_inline",
    "c",
    "cpp",
    "go"
  },  -- You can install parsers for other languages here.

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  highlight = {
    enable = true,              -- Enable Tree-sitter-based syntax highlighting
    additional_vim_regex_highlighting = false, -- Disable standard Vim regex highlighting
  },

  indent = {
    enable = true,  -- Enable Tree-sitter-based indentation
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",  -- Start selection with gnn
      node_incremental = "grn", -- Increment to the next node with grn
      scope_incremental = "grc", -- Increment scope with grc
      node_decremental = "grm", -- Decrement to the previous node with grm
    },
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can define text objects mappings here, example:
        ["af"] = "@function.outer", -- Select around the function
        ["if"] = "@function.inner", -- Select inside the function
        ["ac"] = "@class.outer", -- Select around the class
        ["ic"] = "@class.inner", -- Select inside the class
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- Whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]c"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]C"] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[c"] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[C"] = "@class.outer",
      },
    },
  },

  -- Optional folding configuration using Tree-sitter
  fold = {
    enable = true,
    disable = {},  -- Specify languages to disable folding
  }
}

