return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	dependencies = {
		"nvim-treesitter/playground",
		"nvim-treesitter/nvim-treesitter-textobjects",
		"RRethy/nvim-treesitter-textsubjects",
		"p00f/nvim-ts-rainbow",
		"windwp/nvim-ts-autotag",
		-- [[ "nvim-treesitter/nvim-tree-docs", ]]
		"abecodes/tabout.nvim",
	},
	build = function()
		vim.cmd([[TSUpdate]])
	end,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"astro",
				"bash",
				"c",
				"comment",
				"css",
				"diff",
				"dockerfile",
				"gitignore",
				"go",
				"graphql",
				"html",
				"http",
				"javascript",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"prisma",
				"python",
				"query",
				"regex",
				"scss",
				"svelte",
				"tsx",
				"typescript",
				"vim",
				"sql",
			},
			-- JoosepAlviste/nvim-ts-context-commentstring
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			--[[ tree_docs = { ]]
			--[[     enable = true, ]]
			--[[ }, ]]
			highlight = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			matchup = {
				enable = true,
			},
			-- RRethy/nvim-treesitter-textsubjects
			textsubjects = {
				enable = true,
				prev_selection = ",", -- (Optional) keymap to select the previous selection
				keymaps = {
					["."] = "textsubjects-smart",
					[";"] = "textsubjects-container-outer",
				},
			},
			-- nvim-treesitter/nvim-treesitter-textobjects
			textobjects = {
				select = {
					enable = true,
					-- Automatically jump forward to textobj, similar to targets.vim
					lookahead = true,
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]f"] = "@function.outer",
						["]]"] = "@class.outer",
					},
					goto_next_end = {
						["]F"] = "@function.outer",
						["]["] = "@class.outer",
					},
					goto_previous_start = {
						["[f"] = "@function.outer",
						["[["] = "@class.outer",
					},
					goto_previous_end = {
						["[F"] = "@function.outer",
						["[]"] = "@class.outer",
					},
				},
			},
			playground = {
				enable = false,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = false, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
			-- https://github.com/p00f/nvim-ts-rainbow
			rainbow = {
				enable = true,
				-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
				extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = nil, -- Do not enable for files with more than n lines, int
				colors = {
					"#33b1ff",
					"#42be65",
					"#ff7eb6",
					"#ffe97b",
					"#3ddbd9",
					"#ff5189",
				},
			},
		})
	end,
}