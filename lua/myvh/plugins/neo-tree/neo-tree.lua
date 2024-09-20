require("neo-tree").setup({
        close_if_last_window = true,  -- Close Neo-tree if it’s the last open window
        popup_border_style = "rounded",  -- Rounded window borders for popups
        filesystem = {
                follow_current_file = {
                        enabled = true,
                },
                filtered_items = {
                        visible = true,  -- Show hidden files (dotfiles)
                        hide_gitignored = false,  -- Don't hide files ignored by Git
                        hide_by_name = {
                                ".DS_Store", "thumbs.db", -- Specific files to hide
                        },
                },
        },
        buffers = {
                show_unloaded = true,  -- Show all buffers in Neo-tree
        },
        git_status = {
                window = {
                        position = "float",  -- Float the Git status window
                },
        },
        event_handlers = {
                {
                        event = "file_opened",
                        handler = function(file_path)
                                -- Automatically close Neo-tree after opening a file
                                --require("neo-tree.command").execute({ action = "close" })
                        end
                }
        },
})

