return {
    {
        "nvim-treesitter/nvim-treesitter",
        init = function()
            require("juancamr.utils").lazy_load "nvim-treesitter"
        end,
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            local languages = require("juancamr.constants").treesitter_languages

            configs.setup({
                ensure_installed = languages,
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        init = function()
            require("juancamr.utils").lazy_load "nvim-treesitter-context"
        end,
        config = function()
            require("treesitter-context").setup()
        end,
    },
}
