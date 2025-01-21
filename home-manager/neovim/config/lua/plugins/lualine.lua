return {
  { 
    'nvim-lualine/lualine.nvim', 
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      theme = 'tokyonight',
      sections = {
        lualine_c = {
          { 'filename', path = 4 }
        },
        lualine_x = { 
          { 'filetype' },
          {
            'fileformat',
            symbols = {
              unix = '󱄅'
            },
            padding = {
              left = 1,
              right = 2
            }
          }
        }
      }
    }
  }
}
