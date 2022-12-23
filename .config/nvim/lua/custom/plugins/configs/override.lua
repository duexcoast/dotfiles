local M = {}

M.ui = {
  statusline = { separator_style = "block" },

  tabufline = {
    enabled = true,
    lazyload = false,
  },
}

M.gitsigns = {
  current_line_blame = true,
}

M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },
  filters = {
    custom = {".git", ".DS_Store"}
  },
  view = {
    adaptive_size = false,
  }
}

M.treesitter = {
  ensure_installed = {
    "bash",
    "go",
    "gomod",
    "gowork",
    "json",
    "lua",
    "make",
    "yaml",
    "typescript",
    "tsx",
    "javascript",
    "scheme",
    "html",
    "css",
    "racket",
  },

  -- nvim-ts-rainbow setup
  -- rainbow = {
  --   enable = true,
  --   extended_mode = true,
  --   max_file_lines = nil,
  -- },
  --
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]]"] = "@function.outer",
      },
      goto_previous_start = {
        ["[["] = "@function.outer",
      },
    },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "gopls",
    "goimports",
    "shfmt",
    "shellcheck",
    "tsserver",
  },
}

-- local actions = require "telescope.actions"
--
-- M.telescope = {
--   defaults = {
--     mappings = {
--       i = {
--         ["<C-j>"] = actions.move_selection_next,
--         ["<C-k>"] = actions.move_selection_previous,
--       },
--     },
--   },
-- }
--
return M
