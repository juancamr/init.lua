return {
	"stevearc/conform.nvim",
	event = "BufWrite",
	config = function()
		local fs = require("juancamr.utils").formatters
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { fs.stylua },
				python = { "ruff_format", "ruff_fix" },
				javascript = { fs.prettierd },
				typescript = { fs.prettierd },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		-- kemap for format the code
		local options = { noremap = true, silent = true }
		vim.keymap.set({ "n", "i" }, "<C-A-l>", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timout_ms = 500,
			})
		end, options)
	end,
}
