return {
	{
		"neovim/nvim-lspconfig",
        init = function()
            require("juancamr.utils").lazy_load("nvim-lspconfig")
        end,
		dependencies = {
			"ray-x/lsp_signature.nvim",
		},
		config = function()
			require("plugins.lsp.config.lspconfig")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
        event = "InsertEnter",
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
}
