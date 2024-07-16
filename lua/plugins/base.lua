return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },

    -- toggle comment
    { "numToStr/Comment.nvim" },

    { "LunarVim/bigfile.nvim" },

    { "tpope/vim-dotenv" },

    -- use mini.starter instead of alpha
    { import = "lazyvim.plugins.extras.ui.mini-starter" },

    -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
    { import = "lazyvim.plugins.extras.lang.json" },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                black = {
                    prepend_args = { "-l", "120" },
                },
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            sections = {
                lualine_y = {
                    { "location", padding = { left = 0, right = 1 } },
                },
                lualine_z = {
                    function()
                        return ""
                    end,
                },
            },
        },
    },
}
