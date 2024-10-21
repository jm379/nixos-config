return {
  {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup({})

      vim.keymap.set('n', ']b', ':BufferLineCycleNext<CR>', { desc = 'Next Buffer' })
      vim.keymap.set('n', '[b', ':BufferLineCyclePrev<CR>', { desc = 'Previous Buffer' })
      vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = 'Close Current Buffer' })
      vim.keymap.set('n', '<leader>C', ':BufferLineCloseOthers<CR>', { desc = 'Close Other Buffer' })
    end,
  }
}
