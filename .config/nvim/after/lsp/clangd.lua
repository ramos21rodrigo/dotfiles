local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
local capabilities = ok and cmp_lsp.default_capabilities() or vim.lsp.protocol.make_client_capabilities()

local function load_if_android()
  if vim.fn.getcwd():match("^/android/") then
    return {
      "clangd",
      "--background-index",
      "--clang-tidy",
      "--header-insertion=never",
      "--completion-style=detailed",
      "--limit-results=500",
      "--function-arg-placeholders=true",
      "-j=1",
      "--fallback-style=llvm",
      "--compile-commands-dir=/android/apinext/src/apinext-aosp-mainline/Android/out/soong/development/ide/compdb"
    }
  end

  return {}
end

return {
  cmd = load_if_android(),
  filetypes = { "c", "cpp", "h", "hpp" },
  capabilities = capabilities,
  init_options = {
    compilationDatabasePath =
    "/android/apinext/src/apinext-aosp-mainline/Android/out/soong/development/ide/compdb/"
  },
}
