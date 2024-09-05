
local plugins = {
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {'saadparwaiz1/cmp_luasnip' },
  {"folke/trouble.nvim" },
  {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {'mbbill/undotree'},
  {'rafamadriz/friendly-snippets'},
}

require("lazy").setup(plugins, opts)
