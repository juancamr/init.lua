return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim"
    },
    config = function()
        local lspservers = require("plugins.lsp.config.servers")
        local tools = { "stylua", "eslint_d", "ruff" }

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = lspservers
        })
        require('mason-tool-installer').setup({
            ensure_installed = tools
        })
    end
}
