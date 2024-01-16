return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local lspservers = require("juancamr.utils").servers
		local formatters = require("juancamr.utils").get_formatters_list()

		-- install mason
		require("mason").setup()
		-- install lsp servers
		require("mason-lspconfig").setup({ ensure_installed = lspservers })
		-- install formatters
		require("mason-tool-installer").setup({ ensure_installed = formatters })
	end,
}
