return {
    'stevearc/conform.nvim',
    lazy = false,
    opts = {
        formatters_by_ft = {
            python = { "ruff_format" },
            typescript = { "prettierd" },
            typescriptreact = { "prettierd" },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_fallback = true,
        }
    }
}
