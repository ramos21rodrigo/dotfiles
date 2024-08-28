local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.incsearch = true
opt.scrolloff = 8

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.g.mapleader = " "
