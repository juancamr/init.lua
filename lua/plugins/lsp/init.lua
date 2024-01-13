return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"ray-x/lsp_signature.nvim",
		},
		config = function()
			require("plugins.lsp.config.lspconfig")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"onsails/lspkind.nvim",
		},
		config = function()
			require("plugins.lsp.config.cmp")
		end,
	},
	{
		"github/copilot.vim",
		cmd = "Copilot",
		lazy = true,
		event = "InsertLeave",
	},
}
