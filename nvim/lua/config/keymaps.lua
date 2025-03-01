local keymap = vim.keymap.set

-- Minimal LSP keymaps
keymap('n', 'gd', vim.lsp.buf.definition, {})
keymap('n', 'K', vim.lsp.buf.hover, {})
keymap('n', '<leader>ca', vim.lsp.buf.code_action, {})
