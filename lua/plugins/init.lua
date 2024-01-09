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
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
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
		"github/copilot.vim",
		cmd = "Copilot",
	},
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
	{ "eandrju/cellular-automaton.nvim", cmd = "CellularAutomaton" },
}
