local fzf = require("fzf-lua")
local keymap = vim.keymap

keymap.set("n","<leader>fp", fzf.files, {desc = "[F]ind in [P]roject"})
keymap.set("n","<leader>fg", fzf.files, {desc = "[F]ind in [G]it"})

keymap.set("n","<leader>fw", fzf.grep_cword, {desc = "[F]ind [W]ord"})
