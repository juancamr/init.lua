return {
    "williamboman/mason.nvim",
    lazy = false,
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
        local lspservers = require("juancamr.utils").lsp_servers
        require("mason").setup()
        require("mason-lspconfig").setup({ ensure_installed = lspservers })
    end,
}
