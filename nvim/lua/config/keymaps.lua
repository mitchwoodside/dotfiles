local keymap = vim.keymap.set

-- Clear away junk
local all_clear = function()
  vim.cmd("noh")
end
keymap('n', '<leader>ac', all_clear, {})

-- Movement bindings
keymap({ 'n', 'v', 'i' }, '<up>', '<cmd>echoe "use k"<cr>', {})
keymap({ 'n', 'v', 'i' }, '<down>', '<cmd>echoe "use j"<cr>', {})
keymap({ 'n', 'v', 'i' }, '<left>', '<cmd>echoe "use h"<cr>', {})
keymap({ 'n', 'v', 'i' }, '<right>', '<cmd>echoe "use l"<cr>', {})
keymap({ 'n', 'v', 'x', 'o' }, 'L', '$', {})
keymap({ 'n', 'v', 'x', 'o' }, 'H', '^', {})
keymap('n', '<C-h>', '<C-w>h', {})
keymap('n', '<C-j>', '<C-w>j', {})
keymap('n', '<C-k>', '<C-w>k', {})
keymap('n', '<C-l>', '<C-w>l', {})

-- Minimal LSP keymaps
keymap('n', 'gd', vim.lsp.buf.definition, {})
-- keymap('n', 'K', vim.lsp.buf.hover, {})
keymap('n', '<leader>ca', vim.lsp.buf.code_action, {})
keymap('n', '<leader>cf', vim.lsp.buf.format, {})

-- Highlight references
keymap('n', 'gr', function()
  vim.lsp.buf.document_highlight()
  vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
    buffer = 0,
    once = true,
    callback = vim.lsp.buf.clear_references,
  })
end, { desc = 'Highlight references' })

-- Gitsigns keymaps
keymap('n', ']h', '<cmd>Gitsigns next_hunk<CR>', { desc = 'Next git hunk' })
keymap('n', '[h', '<cmd>Gitsigns prev_hunk<CR>', { desc = 'Previous git hunk' })
keymap('n', '<leader>hs', '<cmd>Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' })
keymap('n', '<leader>hr', '<cmd>Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
keymap('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' })
keymap('n', '<leader>hb', '<cmd>Gitsigns blame_line<CR>', { desc = 'Blame line' })
keymap('n', '<leader>gb', '<cmd>Gitsigns blame<CR>', { desc = 'Blame line' })
keymap('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', { desc = 'Diff this' })

-- Gitlinker keymaps
keymap('n', '<leader>gy', '<cmd>lua require"gitlinker".get_buf_range_url("n")<CR>', { desc = 'Copy git link' })
keymap('v', '<leader>gy', '<cmd>lua require"gitlinker".get_buf_range_url("v")<CR>', { desc = 'Copy git link' })
keymap('n', '<leader>gY', '<cmd>lua require"gitlinker".get_repo_url()<CR>', { desc = 'Copy repo URL' })
keymap('n', '<leader>go', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<CR>', { desc = 'Open git link in browser' })
keymap('v', '<leader>go', '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<CR>', { desc = 'Open git link in browser' })
