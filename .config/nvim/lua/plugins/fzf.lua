return {
  "ibhagwan/fzf-lua",
  requires = { "nvim-tree/nvim-web-devicons" },
  enable = true,
  keys = {
    { "<leader>fg", ":FzfLua git_files<CR>",  desc = "[F]ind in [G]it" },
    { "<leader>fp", ":FzfLua files<CR>",      desc = "[F]ind in [P]roject" },
    { "<leader>fw", ":FzfLua grep<CR>",       desc = "[F]ind [W]ord" },
    { "<leader>fW", ":FzfLua grep_cword<CR>", desc = "[F]ind [W]ord under cursor" },
    { "<leader>fr", ":FzfLua resume<CR>",     desc = "[F]ind [R]esume" },
    { "<leader>fb", ":FzfLua buffers<CR>",    desc = "[F]ind in [B]uffers" }
  }
}
