local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  {'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  {"ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {'saadparwaiz1/cmp_luasnip' },
  {"folke/trouble.nvim" },
  {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {'mbbill/undotree'},
  {'tpope/vim-fugitive' },
  {"ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } },
  {'christoomey/vim-tmux-navigator'},
  {'m4xshen/autoclose.nvim'},
  {'rafamadriz/friendly-snippets'},
  {'xiyaowong/telescope-emoji.nvim'},
  {'xiyaowong/transparent.nvim'},

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        cmd = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        config = function()
          require 'cmp'.setup {
            snippet = {
              expand = function(args)
                require 'luasnip'.lsp_expand(args.body)
              end
            },

            sources = {
              { name = 'luasnip' },
              -- more sources
            },
          }
        end
      },                          -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }


  }
}

require("lazy").setup(plugins, opts)
