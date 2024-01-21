return {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local lspservers = require("juancamr.utils").lsp_servers
        local formatters = require("juancamr.utils").get_formatters_list()

        require("mason").setup()
        require("mason-lspconfig").setup({ ensure_installed = lspservers })
        require("mason-tool-installer").setup({ ensure_installed = formatters })
    end,
}
