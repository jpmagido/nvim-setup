local config = require("oil")

config.setup({
  view_options = {
    show_hidden = true,
  }
})

vim.keymap.set("n", "<leader>fv", config.toggle_float, {})

