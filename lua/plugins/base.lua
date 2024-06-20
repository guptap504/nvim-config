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
  {
    "numToStr/Comment.nvim",
    -- opts = {
    --   toggler = {
    --     -- Line-comment toggle keymap
    --     line = "gcc",
    --     ---Block-comment toggle keymap
    --     block = "gbc",
    --   },
    --   ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    --   opleader = {
    --     ---Line-comment keymap
    --     line = "gc",
    --     ---Block-comment keymap
    --     block = "gb",
    --   },
    --   ---LHS of extra mappings
    --   extra = {
    --     ---Add comment on the line above
    --     above = "gcO",
    --     ---Add comment on the line below
    --     below = "gco",
    --     ---Add comment at the end of line
    --     eol = "gcA",
    --   },
    -- },
  },

  { "LunarVim/bigfile.nvim" },

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
}
