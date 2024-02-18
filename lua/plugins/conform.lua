return {
	"stevearc/conform.nvim",
	lazy = false,
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
