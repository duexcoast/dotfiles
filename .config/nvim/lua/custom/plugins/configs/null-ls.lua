local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local goimports = b.formatting.goimports
-- local e = os.getenv "GOIMPORTS_LOCAL"
-- if e ~= nil then
--   goimports = goimports.with { extra_args = { "-local", e } }
-- end

local sources = {
  -- Go
  goimports,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- Javascript / Typescript / Web
  b.formatting.prettierd,
  b.diagnostics.eslint_d,
}

null_ls.setup {
  debug = false,
  sources = sources,
}
