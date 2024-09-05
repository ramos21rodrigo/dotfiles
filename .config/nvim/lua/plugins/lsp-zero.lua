return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required

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
