return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup()
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
}
