return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	lazy = true,
	config = function()
		local formatters = require("juancamr.utils").formatters
		require("conform").setup({
			formatters_by_ft = {
				lua = formatters.lua,
				python = formatters.python,
				javascript = formatters.js,
				typescript = formatters.js,
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
