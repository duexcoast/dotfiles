return {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",

    --  Adapter configuration for specific languages
    {
        "leoluz/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        config = function(_, opts)
            require("dap-go").setup(opts)
        end,
    },
    { "mfussenegger/nvim-dap-python" },
    { "jbyuki/one-small-step-for-vimkind" },
    { "mxsdev/nvim-dap-vscode-js" },
}
