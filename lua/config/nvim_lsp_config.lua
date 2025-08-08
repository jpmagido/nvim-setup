local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.filetype.add({
  extension = {
    rake = "ruby",
    erb = "ruby",
  }
})

lspconfig.ruby_lsp.setup({
  capabilities = capabilities,
  filetypes = { "ruby" },
  init_options = {
    formatter = 'auto',
    linters = { 'standard' },
  }
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

