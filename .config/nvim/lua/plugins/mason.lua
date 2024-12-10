local lspconfig = require('lspconfig')
local lspconfig_defaults = require('lspconfig').util.default_config

lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)


local function load_if_android()
  local function is_android_project()
    local cwd = vim.fn.getcwd()
    return cwd:match("^/android/")
  end

  -- Only load clangd for Android projects
  if is_android_project() then
    lspconfig.clangd.setup({
      init_options = {
        compilationDatabasePath =
        "/android/apinext/src/apinext-aosp-mainline/Android/out/soong/development/ide/compdb/"
      },
    })
  else
    lspconfig.clangd.setup({})
  end
end


return {
  {
    "williamboman/mason.nvim",

    config = function()
      local mason = require("mason")

      mason.setup({
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
    "williamboman/mason-lspconfig.nvim",

    config = function()
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({})
          end,

          clangd = load_if_android,

          lua_ls = function()
            lspconfig.lua_ls.setup {
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" }
                  }
                }
              }
            }
          end,

        }
      })
    end,
  }
}
