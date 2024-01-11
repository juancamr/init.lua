return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lsp.config.lspconfig")
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			require("plugins.lsp.config.cmp")
		end,
	},
}
