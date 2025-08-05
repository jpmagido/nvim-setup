local lspconfig = require('lspconfig')
require("slayer_parking.remap")

lspconfig.ruby_lsp.setup({
  init_options = {
    formatter = 'standard',
    linters = { 'standard' },
  },
  addonSettings = {
      ["Ruby LSP Rails"] = {
        enablePendingMigrationsPrompt = false,
      },
    },
})

lspconfig.lua_ls.setup{}
