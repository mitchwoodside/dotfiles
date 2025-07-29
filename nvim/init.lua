-- Load configurations
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.terraform")
require("config.python")

-- setup lazy.nvim
require("config.lazy")

require("config.telescope")
require("config.flexoki")
require("config.nvim-tree")

vim.lsp.enable({
  'ruff',
  'pyright',
  'lua-language-server',
  'terraform',
  'gopls'
})
