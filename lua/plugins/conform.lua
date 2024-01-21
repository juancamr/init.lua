return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	config = function()
		local fs = require("juancamr.constants").formatters
		local prettier = { { fs.prettierd, fs.prettier } }

		require("conform").setup({
			formatters_by_ft = {
				lua = { fs.stylua },
				python = { fs.black, fs.isort },
				javascript = prettier,
				typescript = prettier,
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
