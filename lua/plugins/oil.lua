return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { 
    { "echasnovski/mini.icons", opts = {} } 
  },
  config = function()
    local oil_config = require("oil")
    oil_config.setup({
      default_file_explorer = false,
    })
    vim.keymap.set("n", "-", oil_config.toggle_float, {})
  end,
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}

