return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "config.lsp"
        end,
    },
    "jose-elias-alvarez/null-ls.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup {
                auto_update = true,
                debounce_hours = 24,
                ensure_installed = {
                    "black",
                    "isort",
                },
            }
        end,
    },
    "simrat39/inlay-hints.nvim",
    { "j-hui/fidget.nvim", branch = "legacy" },
    "folke/neodev.nvim",
    "jose-elias-alvarez/nvim-lsp-ts-utils",
    "b0o/schemastore.nvim",
}