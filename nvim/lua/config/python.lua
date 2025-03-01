-- Python-specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    -- Set Python-specific options
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4

    -- Enable auto-indenting
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true

    -- Set the correct Python comment string
    vim.opt_local.commentstring = "# %s"

    -- Set textwidth to 88 characters (common for Black formatter)
--     vim.opt_local.textwidth = 88

    -- Display a colored column at textwidth + 1
--     vim.opt_local.colorcolumn = "+1"

    -- Add any other Python-specific settings you prefer
  end
})
