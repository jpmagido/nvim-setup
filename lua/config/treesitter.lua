local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "lua", "javascript" },
  ignore_install = {},
  highlight = { enable = true },
  sync_install = false,
  auto_install = true,
})

