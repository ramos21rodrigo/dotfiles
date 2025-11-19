local IGNORE = { "test", "documentation", ".git" }

return {
  "ibhagwan/fzf-lua",
  requires = { "nvim-tree/nvim-web-devicons" },
  enable = true,
  keys = function()
    local fzf = require("fzf-lua")

    -- helpers para transformar em opções
    local function fd_opts()
      local parts = { "--color=never", "--type", "f", "--hidden", "--follow" }
      for _, dir in ipairs(IGNORE) do
        table.insert(parts, "--exclude")
        table.insert(parts, dir)
      end
      return table.concat(parts, " ")
    end

    local function rg_opts()
      local parts = { "--column", "--line-number", "--no-heading", "--color=always", "--smart-case" }
      for _, dir in ipairs(IGNORE) do
        table.insert(parts, "--glob")
        table.insert(parts, "!" .. dir .. "/*")
      end
      return table.concat(parts, " ")
    end

    return
    {
      { "<leader>fg",  fzf.git_files, desc = "[F]ind in [G]it" },
      { "<leader>fap", fzf.files,     desc = "[F]ind in [A]ll [P]roject" },
      {
        "<leader>fp",
        function()
          fzf.files({ fd_opts = fd_opts() })
        end,
        desc = "[F]ind in [P]roject"
      },
      {
        "<leader>fw",
        function()
          fzf.grep({ rg_opts = rg_opts() })
        end,
        desc = "[F]ind [W]ord"
      },
      {
        "<leader>fW",
        function()
          fzf.grep_cword({ rg_opts = rg_opts() })
        end,
        desc = "[F]ind [W]ord under cursor"
      },

      { "<leader>faw", fzf.grep,       desc = "[F]ind [A]ll project for [W]ord" },
      { "<leader>faW", fzf.grep_cword, desc = "[F]ind [A]ll project for [W]ord under cursor" },

      { "<leader>fr",  fzf.resume,     desc = "[F]ind [R]esume" },
      { "<leader>fb",  fzf.buffers,    desc = "[F]ind in [B]uffers" },
    }
  end
}
