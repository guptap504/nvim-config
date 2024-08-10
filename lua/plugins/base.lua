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
    { "neovim/nvim-lspconfig", opts = {
        diagnostics = {
            virtual_text = false,
        },
    } },
    { "LunarVim/bigfile.nvim" },

    { "tpope/vim-dotenv" },
}
