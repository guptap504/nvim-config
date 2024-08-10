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

    { "rcarriga/nvim-notify", enabled = false },
    { "folke/which-key.nvim", opts = {
        preset = "modern",
        delay = 50,
    } },
    { "LunarVim/bigfile.nvim" },

    { "tpope/vim-dotenv" },
}
