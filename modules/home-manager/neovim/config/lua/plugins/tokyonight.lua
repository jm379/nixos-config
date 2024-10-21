return {
  {
    "folke/tokyonight.nvim", 
    lazy = false, 
    priority = 1000, 
    opts = {
      transparent = true
    },
  },
  { 
    'xiyaowong/transparent.nvim', 
    config = function()
      vim.cmd([[:TransparentEnable]])
    end,
  },
}
