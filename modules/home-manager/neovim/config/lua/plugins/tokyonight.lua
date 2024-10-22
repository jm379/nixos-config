return {
  {
    "folke/tokyonight.nvim", 
    lazy = false, 
    priority = 1000, 
    opts = {
      transparent = true
    },
    config = function()
      require('tokyonight').setup({
      })

      vim.cmd[[colorscheme tokyonight]]
    end
  },
  { 
    'xiyaowong/transparent.nvim', 
    config = function()
      vim.cmd([[:TransparentEnable]])
    end,
  }
}
