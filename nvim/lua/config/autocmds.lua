-- Yank highlighting
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 330 })
  end,
})

-- Save on focus lost, buffer switch, or when leaving insert mode
vim.api.nvim_create_autocmd({"FocusLost", "BufLeave", "InsertLeave"}, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent! write")
    end
  end,
})

