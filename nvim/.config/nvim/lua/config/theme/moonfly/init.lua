local util = require("config.theme.util")

local M = {}

vim.opt.background = "dark"
vim.g.moonflyItalics = false
vim.g.moonflyNormalFloat = true
vim.g.moonflyWinSeparator = 2
vim.g.moonflyVirtualTextColor = true
vim.g.moonflyUnderlineMatchParen = true
vim.g.moonflyCursorColor = true

M.colors = {
	background = "#080808",
	foreground = "#b2b2b2",
	cursor = "#9e9e9e",
	color0 = "#323437",
	color1 = "#ff5454",
	color2 = "#8cc85f",
	color3 = "#e3c78a",
	color4 = "#80a0ff",
	color5 = "#cf87e8",
	color6 = "#79dac8",
	color7 = "#c6c6c6",
	color8 = "#949494",
	color9 = "#ff5189",
	color10 = "#36c692",
	color11 = "#c2c292",
	color12 = "#74b2ff",
	color13 = "#ae81ff",
	color14 = "#85dc85",
	color15 = "#e4e4e4",
	selection_background = "#b2ceee",
	selection_foreground = "#080808",
}
--[[ util.highlight("Normal", { bg = colors.black }) ]]
--[[ vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = M.colors.background }) ]]
util.highlight("NvimTreeNormal", { bg = M.colors.background })
util.highlight("NvimTreeEndOfBuffer", { fg = M.colors.background })
--[[ util.highlight("SignColumn", { bg = colors.black }) ]]
--[[ util.highlight("FloatBorder", { fg = colors.base05 }) ]]
util.highlight("ColorColumn", { fg = "#000000" })

-- GitSigns
util.highlight("DiffAdd", { fg = M.colors.color14 })
util.highlight("DiffChange", { fg = M.colors.color13 })
util.highlight("DiffChangeDelete", { fg = M.colors.color1 })
util.highlight("DiffDelete", { fg = M.colors.color1 })
util.highlight("GitSignsAdd", { fg = M.colors.color4 })
-- Diagnostics
--[[ util.highlight("DiagnosticSignWarn", { fg = colors.base10 }) ]]
--[[ util.highlight("DiagnosticSignError", { fg = colors.base0A }) ]]
--
return M
