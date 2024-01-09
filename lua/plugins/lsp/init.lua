return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.lsp.config.lspconfig")
        end
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip"
        },
        config = function()
            require("plugins.lsp.config.cmp")
        end
    }
}
