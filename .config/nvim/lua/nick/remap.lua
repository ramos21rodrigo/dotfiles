local key = vim.keymap

key.set("n", "<leader>pv", ":Ex<CR>", { desc = '[p]roject [v]iew' })
key.set("n", "<leader>u", ":UndotreeShow<CR>")

key.set("v", "a", "<C-c>ggVG")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")
key.set("n", "n", "nzzzv")

key.set("x", "<leader>p", "\"_dP")

key.set("n", "<leader>vq", "<C-w>q")

key.set("n", "<leader>/", ":noh<CR>")

-- Split view
key.set("n", "<leader>vu", ":UndotreeShow<CR>1<C-w>w")

key.set("n", "<leader>v", "<C-w>")
key.set("n", "<leader>v1", "1<C-w>w")
key.set("n", "<leader>v2", "2<C-w>w")
key.set("n", "<leader>v3", "3<C-w>w")
key.set("n", "<leader>v4", "4<C-w>w")

key.set("n", "<leader>vt", ":terminal<CR>i")

-- Terminal
key.set("t", "<Esc>", "<C-\\><C-n>")
