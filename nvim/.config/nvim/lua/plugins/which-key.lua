return {
    "folke/which-key.nvim",
    config = function()
        local wk = require "which-key"

        wk.register({
            c = {
                a = "Code Actions",
            },
            -- g = {
            --     name = "+LSP",
            --     f = "Format Document",
            --     s = "Toggle format on save",
            -- },
            d = {
                name = "debug",
                n = "dap: continue",
                b = "dap: toggle breakpoint",
                B = "dap: set conditional breakpoint",
                s = "dap: terminate",
                k = "dap: up",
                j = "dap: down",
                r = "dap: open REPL",
                e = "dap: set_exception_breakpoints",
                a = "dap: attach",
                A = "dap: attach to remote",
                i = "dap.ui.widgets: hover",
                d = "jester.debug",
                _ = "jester.debug_last",
                F = "jester.debug_file",
                t = "dap-go.debug_test",
                ["?"] = "dap.ui.widgets: scopes",
                f = "Telescope: dap frames",
                c = "Telescope: dap commands",
                l = "Telescope: dap list_breakpoints",
            },
        }, {
            prefix = "<leader>",
        })

        -- wk.register {
        --     g = {
        --         name = "LSP and TS",
        --         a = "Code Action",
        --         d = "Symbol Definition",
        --         D = "Show Line Diagnostic",
        --         R = "Symbol References",
        --         r = "Rename Symbol",
        --         ["]"] = "Next Diagnostic",
        --         ["["] = "Prev Diagnostic",
        --         O = "TS: Organize Imports",
        --         FR = "TS: Rename File",
        --         I = "TS: Import all",
        --     },
        -- }

        wk.register {
            gc = "Comment",
            gcc = "Comment line",
            gb = "Comment blockwise",
            -- lsp code help
            K = "Hover",
            ["<C-k>"] = "Signature help",
            -- vim-sandwich
            sa = "Add Surrounding Character",
            sd = "Remove Surrounding Character",
            sr = "Replace Surrounding Character",
            --
            ["<A-k>"] = "dap.step_out()",
            ["<A-l>"] = "dap.step_into()",
            ["<A-j>"] = "dap.step_over()",
        }

        wk.setup {
            plugins = {
                marks = true,
                registers = true,
                spelling = { enabled = true },
                presets = {
                    operators = false,
                    motions = false,
                    text_objects = false,
                    windows = false,
                    z = true,
                    g = true,
                },
            },
            -- add operators that will trigger motion and text object completion
            -- to enable all native operators, set the preset / operators plugin above
            operators = { gc = "Comments" },
            icons = {
                breadcrumb = "»",
                separator = "➜ ",
                group = "+",
            },
            window = {
                border = "single",
                position = "bottom",
                margin = { 0, 0, 0, 0 },
                padding = { 4, 2, 4, 2 },
            },
            layout = {
                height = {
                    min = 4,
                    max = 25,
                },
                width = {
                    min = 20,
                    max = 50,
                },
                spacing = 8,
            },
            ignore_missing = false,
            hidden = {
                "<silent>",
                "<cmd>",
                "<Cmd>",
                "<CR>",
                "call",
                "lua",
                "^:",
                "^ ",
            },
            show_help = true,
            triggers = "auto",
            triggers_blacklist = {
                i = { "," },
                n = { "'" },
            },
        }
    end,
}
