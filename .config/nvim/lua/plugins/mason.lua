return {

      {
        -- Optional
        'williamboman/mason.nvim',
        cmd = function()
          pcall(vim.cmd, 'MasonUpdate')
          require("mason").setup()
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
}
