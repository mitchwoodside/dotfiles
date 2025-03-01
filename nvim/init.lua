-- Load configurations
require("config.options")
require("config.keymaps")
require("config.terraform")
require("config.python")

-- setup lazy.nvim
require("config.lazy")

require("config.telescope")

vim.cmd('colorscheme espresso')
