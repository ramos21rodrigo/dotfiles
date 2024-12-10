vim.diagnostic.config({
  signs = false
})

return {
  'VonHeikemen/lsp-zero.nvim',
  lazy = false,
  branch = 'v1.x',
  dependencies = {
    -- LSP support
    { 'neovim/nvim-lspconfig' }, -- Required
    { "williamboman/nvim-lsp-installer" },
  },
  keys = {
    { 'K',          '<cmd>lua vim.lsp.buf.hover()<cr>' },
    { 'gd',         '<cmd>lua vim.lsp.buf.definition()<cr>' },
    { 'gD',         '<cmd>lua vim.lsp.buf.declaration()<cr>' },
    { 'gi',         '<cmd>lua vim.lsp.buf.implementation()<cr>' },
    { 'go',         '<cmd>lua vim.lsp.buf.type_definition()<cr>' },
    { 'gr',         '<cmd>lua vim.lsp.buf.references()<cr>' },
    { 'gs',         '<cmd>lua vim.lsp.buf.signature_help()<cr>' },
    { '<F2>',       '<cmd>lua vim.lsp.buf.rename()<cr>' },
    { '<F3>',       '<cmd>lua vim.lsp.buf.format({async = true})<cr>' },
    { '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>' }
  }

}
