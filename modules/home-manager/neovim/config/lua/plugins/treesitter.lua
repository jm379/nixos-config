return {
  { 
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate',
    opts = {
      ensure_installed = { "lua", "nix", "ruby", "javascript", "html", "go", "templ", "python", "make", "json" },
      sync_install = false,
      highlight = { enable = true },
      ident = { enable = true },
    }
  },
}
