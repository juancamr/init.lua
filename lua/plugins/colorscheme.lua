return {
	"rose-pine/neovim",
	dependencies = {
		"ellisonleao/gruvbox.nvim",
	},
	name = "rose-pine",
	lazy = false,
	priority = 1000,

	config = function()
		require("rose-pine").setup({ disable_background = true })
		require("gruvbox").setup({ transparent_mode = true })

		vim.cmd.colorscheme("gruvbox")
	end,
}
