vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>c', ':bd<CR>')
vim.keymap.set('n', ']b', ':bn<CR>')
vim.keymap.set('n', '[b', ':bp<CR>')

vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { silent = true, noremap = true })
