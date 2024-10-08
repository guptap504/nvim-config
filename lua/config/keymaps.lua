-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move code block down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- move code block up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search terms in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>xd", "<cmd> lua vim.diagnostic.open_float() <CR>")
