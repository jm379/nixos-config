return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        "bash",
        "css",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "nix",
        "python",
        "ruby",
        "templ",
        "vim",
        "vimdoc"
      },
      sync_install = false,
      highlight = { enable = true },
      ident = { enable = true },
    }
  },
}
