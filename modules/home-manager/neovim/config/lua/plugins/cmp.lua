return {
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 
    'hrsh7th/nvim-cmp', 
    config = function()
      local cmp = require('cmp')  

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),

        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'codeium' },
          { name = 'path' },
          { name = 'buffer' },
        }),

        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },

        formatting = {
          format = function(entry, vim_item)
            vim_item.menu = ({
              buffer = "[Buffer]",
              path = "[Path]",
              nvim_lsp = "[LSP]",
              codeium = "[AI]"
            })[entry.source.name]
            return vim_item
          end
        }
      })
    end,
  }
}
