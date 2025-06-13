
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
      -- on_attach = function(bufnr)
      --   local api = require("nvim-tree.api")
      --
      --   local function opts(desc)
      --     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      --   end
      --
      --   -- OR use all default mappings
      --   api.config.mappings.default_on_attach(bufnr)
      --
      --   -- remove a default
      --   -- vim.keymap.del("n", "<C-]>", { buffer = bufnr })
      --
      --   -- override a default
      --   -- vim.keymap.set("n", "<C-e>", api.tree.reload,                       opts("Refresh"))
      --
      --   -- add your mappings
      --   -- vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
      --   vim.keymap.set("n", "<leader>t", api.tree.open(), opts("Show tree"))
      -- end
    })
  end,
}
