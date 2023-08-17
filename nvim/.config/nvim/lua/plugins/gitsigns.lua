return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { hl = "DiffAdd", text = "▎", numhl = "GitSignsAddNr" },
				change = { hl = "DiffChange", text = "▎", numhl = "GitSignsChangeNr" },
				delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
				topdelete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
				changedelete = { hl = "DiffChangeDelete", text = "", numhl = "GitSignsChangeNr" },
				untracked = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
			},
			on_attach = function(bufnr)
				local function map(mode, lhs, rhs, opts)
					opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
					vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
				end

				-- Navigation
				map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
				map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })

				-- Actions
				map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>")
				map("v", "<leader>hs", ":Gitsigns stage_hunk<CR>")
				map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>")
				map("v", "<leader>hr", ":Gitsigns reset_hunk<CR>")
				map("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>")
				map("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>")
				map("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>")
				map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>")
				map("n", "<leader>hd", "<cmd>Gitsigns diffthis<CR>")
				map("n", "<leader>hD", '<cmd>lua require"gitsigns".diffthis("~")<CR>')
				map("n", "<leader>ht", "<cmd>Gitsigns toggle_deleted<CR>")

				-- Text object
				map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>")
				map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>")

				-- Toggle current line blame
				vim.keymap.set(
					"n",
					"<leader>tb",
					":Gitsigns toggle_current_line_blame",
					{ desc = "Toggle git current line blame" }
				)
			end,
		})
	end,
}
