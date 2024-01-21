return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-web-devicons").setup({
			override_by_extension = {
				["astro"] = {
					icon = "",
					color = "#8D021F",
					name = "astro",
				},
			},
		})
	end,
}
