vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

vim.keymap.set("c", "<S-Enter>", function()
	require("noice").redirect(vim.fn.getcmdline())
end, { desc = "Redirect Cmdline" })

-- closing  and quitting
--
-- vim.keymap.set("n", "<leader>q"
-- Quit vim
vim.keymap.set("n", "<leader>Q", ":qall <CR>")
-- Close the current window
vim.keymap.set("n", "<leader>qw", ":close<CR>")

-- Revert to last save
map("n", "U", ":earlier 1f<CR>", { desc = "Revert file to last write" })

-- Jump to new line in insert mode while in middle of line
vim.keymap.set("i", "<S-CR>", "<ESC>o")

-- Splits
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>sv", "<C-w>v")

--- CLIPBOARD
-- paste to a new line
-- vim.keymap.set("n", "<leader>p", "o<ESC>p")
vim.keymap.set("n", "<leader>P", "O<ESC>p")

-- Toggle comment
vim.keymap.set("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)")
vim.keymap.set("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- navigate within insert mode
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<C-o>j")
vim.keymap.set("i", "<C-h>", "<C-o>h")

-- switch between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- go  to beginning / end in insert mode
-- TODO: These mappings are not working. Looks like the terminal is not
-- properly interpreting the escape codes.
vim.keymap.set("i", "<C-e>", "<end>")
vim.keymap.set("i", "<C-b>", "<ESC>^i")

-- unhighlight
vim.keymap.set("n", "<leader>uh", ":noh <CR>")

vim.keymap.set("v", "p", '"_dP"') -- don't yank replaced text

vim.keymap.set("n", "<leader>we", ":x<CR>") -- save and close
vim.keymap.set("n", "<leader>w", ":w<CR>") -- save
vim.keymap.set("n", "<A-q>", ":q!<CR>") -- close w/o saving

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Vim-eft
vim.keymap.set("n", "f", "<Plug>(eft-f-repeatable)")
vim.keymap.set("n", "F", "<Plug>(eft-F-repeatable)")
vim.keymap.set("n", "t", "<Plug>(eft-t-repeatable)")
vim.keymap.set("n", "T", "<Plug>(eft-T-repeatable)")

-- Nvim-Tree
vim.keymap.set("n", "<leader>e", "<CMD> NvimTreeFocus <CR>")
vim.keymap.set("n", "<C-m>", "<CMD> NvimTreeToggle <CR>")
-- Tree Hopper for visual selection by treesitter nodes
vim.keymap.set("v", "m", ":lua require('tsht').nodes()<CR>")
-- Navigate windows
-- vim.keymap.set("n", "<C-l>")

-- Visual Multi

-- Navigate buffers
-- These keymaps are being overwritten below, for changing window size
-- vim.keymap.set("n", "<C-Right>", ":bnext<CR>")
-- vim.keymap.set("n", "<C-Left>", ":bprevious<CR>")

-- Tabs
vim.keymap.set("n", "<S-l>", ":tabnext<CR>")
vim.keymap.set("n", "<S-h>", ":tabprevious<CR>")
vim.keymap.set("n", "<C-t>n", ":tabnew<CR>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<F8>", function()
	require("null-ls").toggle("cspell")
end)

-- Center screen after vertical movements
--[[ vim.keymap.set("n", "<C-u>", "<C-u>zz") ]]
--[[ vim.keymap.set("n", "<C-d>", "<C-d>zz") ]]
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Better up/down
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

--[[ vim.keymap.set("n", "<M-j>", "<Plug>(unimpaired-move-down)", { desc = "Move current line down" }) ]]
--[[ vim.keymap.set("n", "<M-k>", "<Plug>(unimpaired-move-up)", { desc = "Move current line up" }) ]]
local movelineOpts = { noremap = true, silent = true }
vim.keymap.set("n", "<M-j>", ":MoveLine(1)<CR>", movelineOpts)
vim.keymap.set("n", "<M-k>", ":MoveLine(-1)<CR>", movelineOpts)
vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", movelineOpts)
vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", movelineOpts)

vim.keymap.set("n", "<leader>jj", "<Plug>(unimpaired-blank-down)", { desc = "Insert blank line above current line" })
vim.keymap.set("n", "<leader>kk", "<Plug>(unimpaired-blank-up)", { desc = "Insert blank line above current line" })

-- Navigate easily in terminal mode
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Navigate up" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Navigate down" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Navigate left" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Navigate right" })
vim.keymap.set("t", "jk", "<C-\\><C-n>", movelineOpts)

-- Escape key goes from Terminal Mode to Normal Mode
-- map("t", "<ESC>", "<C-><C-n>", { desc = "Insert Mode" })

--[[ map("n", "<C-t>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { desc = "Open terminal. Accepts preceding arg."}) ]]
--[[ map("i", "<C-t>", '<ESC><Cmd>exe v:count1 . "ToggleTerm"<CR>', { desc = "Open terminal. Accepts preceding arg."}) ]]
-- save and source
vim.keymap.set("n", "<leader>cx", function()
	vim.cmd("w")
	vim.cmd("so %")
end)

-- aerial

-- toggle foldmethod
-- vim.keymap.set("n", "yof", function()
-- 	if vim.opt.foldmethod:get() == "expr" then
-- 		vim.cmd([[set foldmethod=manual]])
-- 		print("set foldmethod=manual")
-- 	else
-- 		vim.cmd([[set foldmethod=expr]])
-- 		print("set foldmethod=expr")
-- 	end
-- end)

-- Close dap float windows and quickfix with q and Esc.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "qf", "dap-float" },
	callback = function()
		vim.keymap.set("n", "q", "<cmd>close!<CR>", { silent = true, buffer = true })
		vim.keymap.set("n", "<Esc>", "<cmd>close!<CR>", { silent = true, buffer = true })
	end,
})