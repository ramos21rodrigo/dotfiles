return {
  {
    "williamboman/mason.nvim",

    config = function()
      local mason = require("mason")

      mason.setup({
        ensure_installed = {
          "kotlin-lsp",
        },
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    branch = "master", -- ensure not "v1.x"
  }
}
