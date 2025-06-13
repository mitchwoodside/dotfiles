vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.opt_local.filetype = "terraform"
    vim.opt_local.commentstring = "# %s"
    vim.opt_local.foldmethod = "indent"
  end
})