return {
    "Vigemus/iron.nvim",
    config = function()
        local iron = require("iron.core")

        iron.setup({
            config = {
                -- Whether a repl should be discarded or not
                scratch_repl = true,
                -- Your repl definitions come here
                repl_definition = {
                    sh = {
                        -- Can be a table or a function that
                        -- returns a table (see below)
                        command = { "zsh" },
                    },
                    python = {
                        command = { "python3" }, -- or
                        -- command = { "ipython", "--no-autoindent" },
                        format = require("iron.fts.common").bracketed_paste_python,
                    },
                },
                -- How the repl window will be displayed
                -- See below for more information
                repl_open_cmd = require("iron.view").bottom(20),
            },
            -- Iron doesn't set keymaps by default anymore.
            -- You can set them here or manually add keymaps to the functions in iron.core
            keymaps = {
                send_motion = "<leader>rmc",
                visual_send = "<leader>rmc",
                send_file = "<leader>rmF",
                send_line = "<leader>rml",
                send_paragraph = "<leader>rmp",
                send_until_cursor = "<leader>rmu",
                send_mark = "<leader>rmm",
                -- mark_motion = "<leader>rmo",
                -- mark_visual = "<leader>mc",
                -- remove_mark = "<leader>md",
                -- cr = "<leader>s<cr>",
                -- interrupt = "<leader>s<leader>",
                exit = "<leader>rmq",
                clear = "<leader>rmC",
            },
            -- If the highlight is on, you can change how it looks
            -- For the available options, check nvim_set_hl
            highlight = {
                italic = true,
            },
            ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
        })
        vim.keymap.set("n", "<space>rms", "<cmd>IronRepl<cr>")
        vim.keymap.set("n", "<space>rmr", "<cmd>IronRestart<cr>")
        vim.keymap.set("n", "<space>rmf", "<cmd>IronFocus<cr>")
        vim.keymap.set("n", "<space>rmh", "<cmd>IronHide<cr>")
    end,
}
