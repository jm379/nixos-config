return {
  {
    "williamboman/mason.nvim", 
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "rubocop",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    } 
  },
  { "williamboman/mason-lspconfig.nvim", opts = {} },
}
