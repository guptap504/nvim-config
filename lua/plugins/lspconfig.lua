return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      gopls = {
        settings = {
          codelenses = {
            vendor = false,
          },
          usePlaceholders = false,
          hints = {
            parameterNames = false,
          },
        },
        buildFlags = { "-tags=modbus opc opcda opcua sql" },
      },
    },
  },
}
