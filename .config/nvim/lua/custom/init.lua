local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd
local g = vim.g
g.maplocalleader = "^"
g.rainbow_active = 1

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.backup = false
opt.swapfile = false

opt.scrolloff = 10
opt.relativenumber = true
opt.wrap = false

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
