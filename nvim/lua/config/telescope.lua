local keymap = vim.keymap.set
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
keymap('n', '<Leader>f.', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', { desc = 'Telescope find hidden files' })
keymap('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
keymap('n', '<Leader>fl', builtin.live_grep, {desc="Telescope live grep"})
keymap('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
