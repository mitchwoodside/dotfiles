local api = require("nvim-tree.api")

local function opts(desc)
  return { desc = "nvim-tree: " .. desc, noremap = true, silent = true, nowait = true }
end

local function toggle()
  return api.tree.toggle({ focus=false, find_file=false })
end

local function show_file()
  return api.tree.find_file({ open=true, focus=false })
end

local function go_to_file()
  return api.tree.find_file({ open=true, focus=true })
end

vim.keymap.set("n", "<leader>to", api.tree.open, opts("show tree"))
vim.keymap.set("n", "<leader>tt", toggle, opts("toggle tree"))
vim.keymap.set("n", "<leader>ts", show_file, opts("show file in tree"))
vim.keymap.set("n", "<leader>tg", go_to_file, opts("show file in tree and focus"))
vim.keymap.set("n", "<leader>tc", api.tree.close, opts("close tree"))
