return {
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		lazy = true,
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		event = "BufReadPre",
		lazy = true,
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				override_by_extension = {
					["astro"] = {
						icon = "󰬈",
						color = "#FF0000",
						name = "astro",
					},
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup()
		end,
	},
	{ "github/copilot.vim", cmd = "Copilot", lazy = true, event = "InsertLeave" },
	{ "onsails/lspkind.nvim" },
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
	{ "eandrju/cellular-automaton.nvim", cmd = "CellularAutomaton" },
}
