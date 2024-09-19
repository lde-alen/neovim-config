-- lua/telescope.lua
local telescope = require('telescope')

telescope.setup {
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    path_display = {"truncate"},
    sorting_strategy = "ascending",  -- Show files from the top in the results
    layout_config = {
      horizontal = {
        preview_width = 0.55,  -- Preview window size
      },
    },
  },
}

