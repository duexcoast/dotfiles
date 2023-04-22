return function(on_attach)
	return {
		on_attach = function(client, bufnr)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
			on_attach(client, bufnr)
		end,
		settings = {
			Lua = {
				-- runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				-- version = "LuaJIT",
				-- },
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { "vim" },
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					-- library = vim.api.nvim_get_runtime_file("", true),
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = { enable = false },
			},
		},
	}
end