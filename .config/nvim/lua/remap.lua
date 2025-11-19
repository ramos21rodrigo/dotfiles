local key = vim.keymap

key.set("n", "<leader>u", ":UndotreeShow<CR>")
key.set("v", "a", "<C-c>ggVG")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")
key.set("n", "n", "nzzzv")

key.set("x", "<leader>p", "\"_dP")

key.set("n", "<leader>q", "<C-w>q", { desc = '[Q]uit window ig' })

key.set("n", "<leader>/", ":noh<CR>")

key.set("n", "<leader>v", "<C-w>")
key.set("n", "<leader>v1", "1<C-w>w")
key.set("n", "<leader>v2", "2<C-w>w")
key.set("n", "<leader>v3", "3<C-w>w")
key.set("n", "<leader>v4", "4<C-w>w")

key.set("n", "<leader>vt", ":terminal<CR>i")

-- Terminal
key.set("t", "<Esc>", "<C-\\><C-n>")


-- lsp
key.set("n", 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
key.set("n", 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
key.set("n", 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
key.set("n", 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
key.set("n", 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
key.set("n", 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
key.set("n", '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
key.set("n", '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
key.set("n", '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
