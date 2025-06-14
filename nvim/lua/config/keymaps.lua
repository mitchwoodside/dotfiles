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
